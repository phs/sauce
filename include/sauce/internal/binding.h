#ifndef SAUCE_SAUCE_INTERNAL_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDING_H_

#include <map>
#include <set>

#include <cassert>

#include <sauce/memory.h>

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
template<typename Iface>
void BindKeyFactory() {}

/**
 * A helper that encapsulates getting BindKeys.
 */
template<typename Iface>
BindKey BindKeyOf() {
  return &BindKeyFactory<Iface>;
}

/**
 * A set of bind keys used to detect circular dependencies.
 */
typedef std::set<BindKey> BindKeys;

template<typename Iface>
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
  template<typename Iface>
  ResolvedBinding<Iface> & resolve() {
    assert(BindKeyOf<Iface>() == getKey());
    return *static_cast<ResolvedBinding<Iface> *>(this);
  }

};

/**
 * A binding for a specific interface.
 */
template<typename Iface>
struct ResolvedBinding:
  public Binding {

  /**
   * Provide an instance of Iface, using the given injector to resolve dependencies.
   *
   * The bindKeys indicate which keys are already currently being provided: this is used for
   * circular dependency detection.
   */
  virtual SAUCE_SHARED_PTR<Iface> get(Injector & injector, BindKeys & bindKeys) = 0;

};

typedef std::map<BindKey, SAUCE_SHARED_PTR<Binding> > BindingMap;

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDING_H_