#ifndef SAUCE_INTERNAL_INJECTOR_BINDING_H_
#define SAUCE_INTERNAL_INJECTOR_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {

/**
 * An injection that provides the injector itself.
 */
class InjectorBinding: public Binding<Key<Injector>::Normalized, NoScope> {
  void validateAcyclic(InjectorPtr, TypeIds &) const {}

  /**
   * Inject the injector.
   *
   * Just return the passed injector.
   */
  void inject(InjectorPtr & injected, BindingPtr, InjectorPtr injector) const {
    injected = injector;
  }

public:

  InjectorBinding():
    Binding<Key<Injector>::Normalized, NoScope>() {}
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_INJECTOR_BINDING_H_
