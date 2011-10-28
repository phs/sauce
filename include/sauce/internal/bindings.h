#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_H_

#include <map>
#include <vector>
#include <utility>

#include <cassert>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Injector;

namespace internal {

/**
 * Cast an OpaqueBindingPtr to a Binding smart pointer.
 *
 * This must be done carefully (with static_pointer_cast) in order to not lose the ref count.
 */
template<typename Dependency>
sauce::shared_ptr<Binding<Dependency> > resolve(OpaqueBindingPtr binding) {
  assert((typeIdOf<Dependency>()) == binding->getDependencyKey());
  return sauce::static_pointer_cast<Binding<Dependency> >(binding);
}

typedef void (*PendingThrow)();

/**
 * Template function used to create typed, deferred exceptions.
 *
 * The exception must have an accessible nullary constructor.
 * Template instantiations will construct and throw an instance.
 */
template<typename Exception>
void pendingThrowFactory() {
  throw Exception();
}

/**
 * A container for bindings.
 *
 * Each Modules objects creates a Bindings, and passes a const copy to each Injector it creates.
 * The set of bindings an Injector uses is therefore read-only.
 *
 * When providing instances (eagerly and not) the injector is passed in and the dependency is
 * returned directly, instead of giving the binding to the injector (the binding details stay
 * hidden.)
 *
 * TODO: lies
 * The template parameter is a strategy type that attempts to located unknown bindings dynamically
 * (implicitly.)  Due to the threat of circular dependencies, Bindings itself can't be aware of
 * concrete Binding implementations.  The only time it needs to know about them is when resolving
 * implicit bindings.  So, this functionality is hidden behind the templated strategy.
 */
template<typename DynamicBindingResolver>
class Bindings {
  typedef std::map<TypeId, OpaqueBindingPtr> BindingMap;
  typedef std::vector<OpaqueBindingPtr> ScopedBindings;
  typedef std::map<TypeId, ScopedBindings> ScopeMap;

  BindingMap bindingMap;
  ScopeMap scopeMap;
  PendingThrow pending;

public:

  Bindings():
    bindingMap(),
    scopeMap(),
    pending(NULL) {}

  /**
   * Insert the given binding.
   */
  template<typename Binding_>
  void put() {
    OpaqueBindingPtr binding(new Binding_());
    bindingMap.insert(std::make_pair(binding->getDependencyKey(), binding));
    TypeId scopeKey = binding->getScopeKey();

    ScopeMap::iterator i = scopeMap.find(scopeKey);
    if (i == scopeMap.end()) {
      ScopedBindings bindings;
      bindings.push_back(binding);
      scopeMap.insert(i, std::make_pair(scopeKey, bindings));
    } else {
      i->second.push_back(binding);
    }
  }

  /**
   * Provide the named Dependency.
   *
   * If no binding is found, throw UnboundException.
   */
  template<typename Dependency>
  typename Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    BindingMap::const_iterator i = bindingMap.find(typeIdOf<Dependency>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Dependency>();
    }

    sauce::shared_ptr<Binding<Dependency> > binding = resolve<Dependency>(i->second);
    return binding->get(binding, injector, ids);
  }

  template<typename Scope>
  void eagerlyProvide(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    ScopeMap::const_iterator i = scopeMap.find(typeIdOf<Scope>());
    if (i == scopeMap.end()) {
      return;
    }

    ScopedBindings const & bindings = i->second;
    for (ScopedBindings::const_iterator i = bindings.begin(); i != bindings.end(); ++i) {
      OpaqueBindingPtr binding = *i;
      binding->eagerlyProvide(binding, injector, ids);
    }
  }

  /**
   * Save an exception of the given type to throw when it is safe.
   *
   * The exception must have an accessible nullary constructor.
   *
   * Any previously saved exception is dropped.
   */
  template<typename Exception>
  void throwLater() {
    pending = &pendingThrowFactory<Exception>;
  }

  /**
   * Throw and clear any saved exception.
   */
  void throwAnyPending() {
    if (pending) {
      PendingThrow toThrow = pending;
      pending = NULL;
      toThrow();
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_H_
