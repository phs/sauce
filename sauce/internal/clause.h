#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <string>
#include <vector>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/method_binding.h>
#include <sauce/internal/new_binding.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/provider_binding.h>

namespace sauce {
namespace internal {

class ImplicitBindings;

/**
 * The accumulated state passed between Clauses that ultimately results in a new Binding.
 */
class ClauseState {
  Bindings<ImplicitBindings> & bindings;
  PendingThrower & pendingThrower;
  OpaqueBindingPtr pendingBinding;
  OpaqueBindingPtr providerBinding;
  std::string dynamicName;
  std::vector<std::string> dynamicDependencyNames;

public:

  ClauseState(Bindings<ImplicitBindings> & bindings, PendingThrower & pendingThrower):
    bindings(bindings),
    pendingThrower(pendingThrower),
    pendingBinding(),
    providerBinding(),
    dynamicName(unnamed()),
    dynamicDependencyNames() {
    pendingThrower.throwAnyPending();
  }

  virtual ~ClauseState() {
    if (pendingBinding.get() == NULL) {
      return;
    }

    pendingBinding->setName(dynamicName);
    pendingBinding->setDynamicDependencyNames(dynamicDependencyNames);

    if (pendingBinding.get() != NULL) {
      bindings.put(pendingBinding);
    }

    if (providerBinding.get() != NULL) {
      bindings.put(providerBinding);
    }
  }

  void bind(OpaqueBindingPtr pendingBinding) {
    this->pendingBinding = pendingBinding;
  }

  void bindProvider(OpaqueBindingPtr providerBinding) {
    this->providerBinding = providerBinding;
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
 * bindings.  When they do, a transition to a ProvidingClause occurs.
 */
template<typename Dependency>
class InitialClause {
  friend class InitialClause<Named<typename Key<Dependency>::Iface, Unnamed> >;

  ClauseStatePtr state;

protected:

  InitialClause():
    state() {}

  InitialClause(ClauseStatePtr state):
    state(state) {
    throwLater(PartialBindingExceptionFor<Dependency>());
  }

  template<typename Next>
  Next pass(Next next) {
    next.setState(state);
    return next;
  }

  void setState(ClauseStatePtr state) {
    state->clearException();
    this->state = state;
    throwLater(PartialBindingExceptionFor<Dependency>());
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
 * Base class for final parts of the fluent binding API that result in providing bindings.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class ProvidingClause {
  ClauseStatePtr state;

  friend class InitialClause<Dependency>;

  virtual void onComplete() {}

protected:

  ProvidingClause():
    state() {}

  ProvidingClause(ClauseStatePtr state):
    state(state) {}

  ClauseStatePtr getState() {
    return state;
  }

  template<typename Next>
  Next pass(Next next) {
    next.setState(state);
    return next;
  }

  void bindDynamicDependencyName(unsigned int position, std::string const name) {
    state->bindDynamicDependencyName(position, name);
  }

public:

  void setState(ClauseStatePtr state) {
    OpaqueBindingPtr pendingBinding(new i::NewBinding<Dependency, Scope, Ctor, Allocator>());
    this->state = state;

    getState()->clearException();
    getState()->bind(pendingBinding);
    onComplete();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
