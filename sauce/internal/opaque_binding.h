#ifndef SAUCE_INTERNAL_OPAQUE_BINDING_H_
#define SAUCE_INTERNAL_OPAQUE_BINDING_H_

#include <string>
#include <vector>

#include <sauce/memory.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Injector;

namespace internal {

struct OpaqueBinding;

typedef sauce::shared_ptr<OpaqueBinding> OpaqueBindingPtr;

/**
 * An opaque binding.
 *
 * Bindings associate an interface with an implementation.  How that provision
 * comes about is determine by derived types.  Binding itself is a pure
 * interface.
 *
 * To be type-homogenous, OpaqueBinding is not a template, and particularly not a
 * template of any specific interface or implementation types.  It however has
 * a TypeId, which indirectly identifies the interface it is bound to. The
 * interface is raised to the type system in ResolvedBinding, a class template
 * deriving from OpaqueBinding.
 */
struct OpaqueBinding {

  /**
   * The TypeId of the (hidden) provided interface.
   */
  virtual TypeId getKey() const = 0;

  /**
   * The TypeId of the (hidden) scope.
   */
  virtual TypeId getScopeKey() const = 0;

  /**
   * Provide, but do not return the hidden interface.
   *
   * Instead, cache the instance in its appropriate scope, if any.  If the binding is not scoped,
   * do nothing.
   */
  virtual void eagerlyProvide(OpaqueBindingPtr, sauce::shared_ptr<Injector>) const {}

  /**
   * Accept the list of dynamic dependency names this binding was created with.
   */
  virtual void setDynamicDependencyNames(std::vector<std::string>) {}

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_OPAQUE_BINDING_H_
