#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_

#include <cassert>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/bindings/transparent_binding.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace bindings {

/**
 * A binding that provides from the configured provider.
 */
template<typename Dependency, typename Scope, typename Provider>
class ProviderBinding: public TransparentBinding<Dependency, Scope> {
  typedef typename Binding<Dependency>::BindingPtr BindingPtr;

  void validateAcyclic(InjectorPtr injector, TypeIds & ids) const {
    this->template validateAcyclicos<Provider>(injector, ids);
  }

  typename Key<Dependency>::Ptr provide(BindingPtr, InjectorPtr injector) const {
    return this->template getDependency<Provider>(injector)->get();
  }
};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_
