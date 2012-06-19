#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <vector>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/injection_binding.h>

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
  std::vector<std::string> dynamicDependencyNames;

public:

  ClauseState(Bindings<ImplicitBindings> & bindings, PendingThrower & pendingThrower):
    bindings(bindings),
    pendingThrower(pendingThrower),
    pendingBinding(),
    extraPendingBindings(),
    dynamicDependencyNames() {
    pendingThrower.throwAnyPending();
  }

  virtual ~ClauseState() {
    if (pendingBinding.get() != NULL) {
      pendingBinding->setDynamicDependencyNames(dynamicDependencyNames);
      bindings.put(pendingBinding);
    }

    typedef std::vector<OpaqueBindingPtr>::iterator I;
    for (I i = extraPendingBindings.begin(); i != extraPendingBindings.end(); ++i) {
      bindings.put(*i);
    }
  }

  template<typename Scope, typename BoundInjection>
  void bind() {
    typedef typename BoundInjection::Dependency Dependency;
    typename BoundInjection::InjectionPtr injection(new BoundInjection());
    pendingBinding.reset(new InjectionBinding<Dependency, Scope>(injection));
  }

  template<typename Scope, typename BoundInjection>
  void bindExtra() {
    typedef typename BoundInjection::Dependency Dependency;
    typename BoundInjection::InjectionPtr injection(new BoundInjection());
    OpaqueBindingPtr extra(new InjectionBinding<Dependency, Scope>(injection));
    extraPendingBindings.push_back(extra);
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

  void clear() {
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
    state->clear();
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
