#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_INJECTOR_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_INJECTOR_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/injections/injection.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * A binding that provides the injector itself.
 */
class InjectorBinding:
  public Injection<Key<Injector>::Normalized, NoScope> {

  typedef Binding<Key<Injector>::Normalized>::BindingPtr BindingPtr;

  /**
   * Provide the injector.
   *
   * Just return the passed injector.
   */
  InjectorPtr provide(BindingPtr, InjectorPtr injector) const {
    return injector;
  }

};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
