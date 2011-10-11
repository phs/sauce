#ifndef SAUCE_SAUCE_INTERNAL_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDING_H_

#include <map>
#include <set>
#include <utility>

#include <cassert>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>

namespace sauce {

class Injector;

namespace internal {

/**
 * An interface specification.
 *
 * BindKeys are opaque objects that fingerprint possible requests one may make
 * to an Injector.  They are values (not types) with a total ordering.  This
 * allows us to do arbitrary binding resolution, but only at runtime.
 *
 * Concretely, they are function pointers: the total ordering is that of the
 * address space.  No RTTI (i.e. typeid) is used.
 */
typedef void (*BindKey)();

/**
 * The template that generates BindKeys.
 */
template<typename Dependency>
void BindKeyFactory() {}

/**
 * A helper that encapsulates getting BindKeys.
 */
template<typename Dependency>
BindKey BindKeyOf() {
  return &BindKeyFactory<Dependency>;
}

/**
 * A set of bind keys used to detect circular dependencies.
 */
typedef std::set<BindKey> BindKeys;

/**
 * Detects circular dependencies on behalf of injectors.
 */
template<typename Dependency>
class CircularDependencyGuard {
  friend class ::sauce::Injector;

  BindKeys & keys;
  BindKey key;

  CircularDependencyGuard(BindKeys & keys):
    keys(keys),
    key(BindKeyOf<Dependency>()) {
    if (keys.find(key) == keys.end()) {
      keys.insert(key);
    } else {
      throw CircularDependencyExceptionFor<Dependency>();
    }
  }

  ~CircularDependencyGuard() {
    keys.erase(key);
  }
};

template<typename Dependency>
class ResolvedBinding;

/**
 * An opaque binding.
 *
 * Bindings associate an interface with an implementation.  How that provision
 * comes about is determine by derived types.  Binding itself is a pure
 * interface.
 *
 * To be type-homogenous, Binding is not a template, and particularly not a
 * template of any specific interface or implementation types.  It however has
 * a BindKey, which indirectly identifies the interface it is bound to.
 *
 * The interface is raised to the type system in ResolvedBinding, a templated
 * class deriving from Binding.  The implementation is in turn raised in
 * TransparentBinding, which derives from ResolvedBinding.
 *
 * Other binding implementations (those that implement provision strategies)
 * extend TransparentBinding.  Their behavior is exposed to a Binding client
 * by (runtime) polymorphism.
 */
struct Binding {

  /**
   * The BindKey of this Binding's (hidden) interface type.
   *
   * The Bindkey finger prints which provision requests this Binding may
   * satisfy in an Injector.
   */
  virtual BindKey getKey() = 0;

  /**
   * Resolve the interface actually bound.
   *
   * Note the caller is expected to understand which interface this is.  As
   * this is an internal type and Sauce's own callers obey this as an
   * invariant, requests for other types will immediately fail an assert.
   */
  template<typename Dependency>
  ResolvedBinding<Dependency> & resolve() {
    assert((BindKeyOf<Dependency>()) == getKey());
    return *static_cast<ResolvedBinding<Dependency> *>(this);
  }

};

/**
 * A binding for a specific interface.
 */
template<typename Dependency>
struct ResolvedBinding:
  public Binding {

  /**
   * Provide an instance of Iface, using the given injector to resolve dependencies.
   *
   * The bindKeys indicate which keys are already currently being provided: this is used for
   * circular dependency detection.
   */
  virtual typename DependencyKey<Dependency>::Ptr get(Injector & injector, BindKeys & bindKeys) = 0;

};

/**
 * Template function used to create typed, deferred exceptions.
 *
 * The exception must have an accessible nullary constructor.
 * Instances of this template will construct and throw an instance.
 */
template<typename Exception>
void pendingThrowFactory() {
  throw Exception();
}

typedef void (*PendingThrow)();

class BindingMap: public std::map<BindKey, SAUCE_SHARED_PTR<Binding> > {
  PendingThrow pending;

public:

  BindingMap():
    std::map<BindKey, SAUCE_SHARED_PTR<Binding> >(),
    pending(NULL) {}

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
  void throwPending() {
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