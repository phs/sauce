#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_INJECTOR_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_INJECTOR_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/bindings/transparent_binding.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace bindings {

/**
 * A binding that provides the injector itself.
 */
class InjectorBinding:
  public TransparentBinding<Key<Injector>::Normalized, NoScope> {

  typedef Binding<Key<Injector>::Normalized>::BindingPtr BindingPtr;

  void validateAcyclic(BindingPtr, InjectorPtr, TypeIds &) const {}

  /**
   * Provide the injector.
   *
   * Just return the passed injector.
   */
  InjectorPtr provide(BindingPtr, InjectorPtr injector, TypeIds &) const {
    return injector;
  }

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
