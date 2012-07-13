#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <cassert>
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

template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class ProviderBindingCreator {
  template<typename T>
  OpaqueBindingPtr createIfDependencyIsAProvider(...) {
    return OpaqueBindingPtr();
  }

  template<typename T>
  OpaqueBindingPtr createIfDependencyIsAProvider(typename i::Key<T>::Iface::Provides *) {
    typedef typename i::Key<Dependency>::Iface Provider;
    typedef typename Provider::Provides Iface;
    typedef typename i::Key<Dependency>::Name Name;
    typedef Named<Iface, Name> ProvidedDependency;

    return OpaqueBindingPtr(new i::ProviderBinding<ProvidedDependency, Scope, Dependency>());
  }

public:

  OpaqueBindingPtr create() {
    return createIfDependencyIsAProvider<Dependency>(0);
  }
};

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
    providerBinding(),
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

    if (providerBinding.get() != NULL) {
      bindings.put(providerBinding);
    }
  }

  template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
  void bind() {
    assert(!finalizedProvision);
    pendingBinding.reset(new i::NewBinding<Dependency, Scope, Ctor, Allocator>());

    ProviderBindingCreator<Dependency, Scope, Ctor, Allocator> creator;
    providerBinding = creator.create();
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
 * Base class for final parts of the fluent binding API.
 *
 * A final clause is not necessarily the last in its binding sentence, but will only be followed by other final
 * clauses.  They contain enough state to create the user's chosen bindings, but still offer the possibility of
 * further customization.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class FinalClause {
  ClauseStatePtr state;

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

  void bindDynamicDependencyName(unsigned int position, std::string const name) {
    state->bindDynamicDependencyName(position, name);
  }

public:

  void setState(ClauseStatePtr state) {
    state->clearException();
    this->state = state;
    this->state->template bind<Dependency, Scope, Ctor, Allocator>();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
