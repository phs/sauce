#ifndef SAUCE_INTERNAL_RESOLVED_BINDING_H_
#define SAUCE_INTERNAL_RESOLVED_BINDING_H_

#include <sauce/memory.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>
#include <sauce/internal/opaque_binding.h>

namespace sauce {

class Injector;

namespace internal {

/**
 * A binding for an acknowledged interface.
 */
template<typename Dependency>
struct ResolvedBinding: public OpaqueBinding {

  typedef sauce::shared_ptr<ResolvedBinding<Dependency> > BindingPtr;

  /**
   * The TypeId of the Dependency template parameter.
   */
  TypeId getKey() const {
    return typeIdOf<Dependency>();
  }

  virtual void validateAcyclic(sauce::shared_ptr<Injector>, TypeIds &) const {}

  /**
   * Get an Iface, using the given injector to provide dependencies.
   *
   * The binding pointer must point to this same binding instance.
   */
  virtual typename Key<Dependency>::Ptr get(BindingPtr, sauce::shared_ptr<Injector>) const = 0;

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_RESOLVED_BINDING_H_
