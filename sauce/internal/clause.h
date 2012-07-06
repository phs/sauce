#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <cassert>
#include <string>
#include <vector>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/opaque_binding.h>

namespace sauce {
namespace internal {

struct ImplicitBindings;

/**
 * The accumulated state passed between Clauses that ultimately results in a new Binding.
 */
class ClauseState {
  Bindings<ImplicitBindings> & bindings;
  PendingThrower & pendingThrower;
  OpaqueBindingPtr pendingBinding;
  std::vector<OpaqueBindingPtr> extraPendingBindings;
  std::string dynamicName;
  std::vector<std::string> dynamicDependencyNames;
  bool finalizedProvision;

  void finalizeInjection() {
    if (pendingBinding.get() == NULL) {
      return;
    }

    if (!finalizedProvision) {
      pendingBinding->setName(dynamicName);
      pendingBinding->setDynamicDependencyNames(dynamicDependencyNames);
      dynamicDependencyNames.clear();
      finalizedProvision = true;
    }
  }

public:

  ClauseState(Bindings<ImplicitBindings> & bindings, PendingThrower & pendingThrower):
    bindings(bindings),
    pendingThrower(pendingThrower),
    pendingBinding(),
    extraPendingBindings(),
    dynamicName(unnamed()),
    dynamicDependencyNames(),
    finalizedProvision(false) {
    pendingThrower.throwAnyPending();
  }

  virtual ~ClauseState() {
    finalizeInjection();

    if (pendingBinding.get() != NULL) {
      bindings.put(pendingBinding);
    }

    typedef std::vector<OpaqueBindingPtr>::iterator I;
    for (I i = extraPendingBindings.begin(); i != extraPendingBindings.end(); ++i) {
      bindings.put(*i);
    }
  }

  template<typename Scope, typename BoundInjection>
  void bind() {
    assert(!finalizedProvision);
    pendingBinding.reset(new BoundInjection());
  }

  template<typename Scope, typename BoundInjection>
  void bindExtra() {
    OpaqueBindingPtr extra(new BoundInjection());
    extraPendingBindings.push_back(extra);
  }

  void setDynamicName(std::string const name) {
    this->dynamicName = name;
  }

  void bindDynamicDependencyName(unsigned int position, std::string const name) {
    if (dynamicDependencyNames.size() <= position) {
      dynamicDependencyNames.resize(position + 1, unnamed());
    }
    dynamicDependencyNames[position] = name;
  }

  template<typename Exception>
  void throwLater() {
    pendingThrower.template throwLater<Exception>();
  }

  void clearException() {
    pendingThrower.clear();
  }
};

typedef sauce::shared_ptr<ClauseState> ClauseStatePtr;

/**
 * Base class for parts of the fluent binding API.
 */
class Clause {
  ClauseStatePtr state;

  virtual void onComplete() = 0;

protected:

  Clause():
    state() {}

  template<typename Next>
  Next pass(Next next) {
    state->clearException();
    next.setState(state);
    return next;
  }

  template<typename Scope, typename BoundInjection>
  void bind(BoundInjection) {
    state->template bind<Scope, BoundInjection>();
  }

  template<typename Scope, typename BoundInjection>
  void bindExtra(BoundInjection) {
    state->template bindExtra<Scope, BoundInjection>();
  }

  void setDynamicName(std::string const name) {
    state->setDynamicName(name);
  }

  void bindDynamicDependencyName(unsigned int position, std::string const name) {
    state->bindDynamicDependencyName(position, name);
  }

  template<typename Exception>
  void throwLater(Exception) {
    state->template throwLater<Exception>();
  }

public:

  void setState(ClauseStatePtr state) {
    this->state = state;
    onComplete();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
