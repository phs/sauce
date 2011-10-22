#ifndef SAUCE_SAUCE_INTERNAL_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDING_H_

#include <map>
#include <set>
#include <vector>
#include <utility>

#include <cassert>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Injector;

namespace internal {

template<typename Dependency>
class Binding;

struct OpaqueBinding;

typedef sauce::shared_ptr<OpaqueBinding> OpaqueBindingPtr;

/**
 * An opaque binding.
 *
 * Bindings associate an interface with an implementation.  How that provision
 * comes about is determine by derived types.  Binding itself is a pure
 * interface.
 *
 * To be type-homogenous, Binding is not a template, and particularly not a
 * template of any specific interface or implementation types.  It however has
 * a TypeId, which indirectly identifies the interface it is bound to.
 *
 * The interface is raised to the type system in Binding, a templated class
 * deriving from OpaqueBinding.  The implementation is in turn raised in
 * TransparentBinding, which derives from Binding.
 *
 * Other binding implementations (those that implement provision strategies)
 * extend TransparentBinding.  Their behavior is exposed to a Binding client
 * by (runtime) polymorphism.
 */
struct OpaqueBinding {

  /**
   * The TypeId of the (hidden) provided dependency.
   *
   * The dependency id finger prints which provision requests we can satisfy in an Injector.
   */
  virtual TypeId getDependencyKey() const = 0;

  /**
   * The TypeId of our (hidden) scope.
   */
  virtual TypeId getScopeKey() const = 0;

  /**
   * Provide, but do not return an instance of the hidden interface.
   *
   * Instead, cache the instance in its appropriate scope, if any.  If the binding is not scoped,
   * do nothing.  The typeIds indicate which keys are already currently being provided to detect
   * circular dependencies.
   */
  virtual void eagerlyProvide(OpaqueBindingPtr, Injector &, TypeIds &) const {}

};

/**
 * A binding for a specific interface.
 */
template<typename Dependency>
struct Binding:
  public OpaqueBinding {

  typedef sauce::shared_ptr<Binding<Dependency> > BindingPtr;

  /**
   * Get an instance of Iface, using the given injector to provide dependencies.
   *
   * The binding pointer must point to this same binding instance.
   *
   * The typeIds indicate which keys are already currently being provided to detect circular
   * dependencies.
   */
  virtual typename Key<Dependency>::Ptr get(BindingPtr, Injector &, TypeIds &) const = 0;

};

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
  typename Key<Dependency>::Ptr get(Injector & injector, TypeIds & typeIds) const {
    BindingMap::const_iterator i = bindingMap.find(typeIdOf<Dependency>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Dependency>();
    }

    sauce::shared_ptr<Binding<Dependency> > binding = resolve<Dependency>(i->second);
    return binding->get(binding, injector, typeIds);
  }

  template<typename Scope>
  void eagerlyProvide(Injector & injector, TypeIds & typeIds) const {
    ScopeMap::const_iterator i = scopeMap.find(typeIdOf<Scope>());
    if (i == scopeMap.end()) {
      return;
    }

    ScopedBindings const & bindings = i->second;
    for (ScopedBindings::const_iterator i = bindings.begin(); i != bindings.end(); ++i) {
      OpaqueBindingPtr binding = *i;
      binding->eagerlyProvide(binding, injector, typeIds);
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

#endif // SAUCE_SAUCE_INTERNAL_BINDING_H_
