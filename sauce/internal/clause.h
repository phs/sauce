#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <cassert>
#include <string>
#include <vector>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/all.h>
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

  template<typename BoundInjection>
  void bind() {
    assert(!finalizedProvision);
    pendingBinding.reset(new BoundInjection());
  }

  template<typename BoundInjection>
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
 * Base class for initial parts of the fluent binding API.
 *
 * An initial clause is what all binding sentences begin with, but do not contain enough information to yet create
 * bindings.  When they do, a transition to a FinalClause occurs.
 */
template<typename Dependency>
class InitialClause {
  friend class InitialClause<Named<typename Key<Dependency>::Iface, Unnamed> >;

  ClauseStatePtr state;

protected:

  void onComplete() {
    throwLater(PartialBindingExceptionFor<Dependency>());
  }

  InitialClause():
    state() {}

  InitialClause(ClauseStatePtr state):
    state(state) {}

  template<typename Next>
  Next pass(Next next) {
    next.setState(state);
    return next;
  }

  void setState(ClauseStatePtr state) {
    state->clearException();
    this->state = state;
    onComplete();
  }

  void setDynamicName(std::string const name) {
    state->setDynamicName(name);
  }

  template<typename Exception>
  void throwLater(Exception) {
    state->template throwLater<Exception>();
  }
};

/**
 * Base class for final parts of the fluent binding API.
 *
 * A final clause is not necessarily the last in its binding sentence, but will only be followed by other final
 * clauses.  They contain enough state to create the user's chosen bindings, but still offer the possibility of
 * further customization.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class FinalClause {
  ClauseStatePtr state;

  virtual void onComplete() = 0;

  friend class InitialClause<Dependency>;

protected:

  FinalClause():
    state() {}

  FinalClause(ClauseStatePtr state):
    state(state) {}

  template<typename Next>
  Next pass(Next next) {
    next.setState(state);
    return next;
  }

  void bind() {
    typedef i::NewBinding<Dependency, Scope, Ctor, Allocator> BoundInjection;
    state->template bind<BoundInjection>();
  }

  template<typename BoundInjection>
  void bindExtra(BoundInjection) {
    state->template bindExtra<BoundInjection>();
  }

  void bindDynamicDependencyName(unsigned int position, std::string const name) {
    state->bindDynamicDependencyName(position, name);
  }

public:

  void setState(ClauseStatePtr state) {
    state->clearException();
    this->state = state;
    onComplete();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
