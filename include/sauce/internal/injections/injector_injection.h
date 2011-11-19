#ifndef SAUCE_INTERNAL_INJECTIONS_INJECTOR_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_INJECTOR_INJECTION_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/injections/injection.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * An injection that provides the injector itself.
 */
class InjectorInjection:
  public Injection<Key<Injector>::Normalized> {

  typedef ResolvedBinding<Key<Injector>::Normalized>::BindingPtr BindingPtr;

  /**
   * Provide the injector.
   *
   * Just return the passed injector.
   */
  InjectorPtr provide(BindingPtr, InjectorPtr injector) const {
    return injector;
  }

  TypeId getScopeKey() const {
    return typeIdOf<NoScope>();
  }
};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_NAKED_INJECTION_H_
