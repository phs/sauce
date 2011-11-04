#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_

#include <cassert>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/bindings/naked_binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {
namespace bindings {

/**
 * A binding that provides from the configured provider.
 */
template<typename Dependency, typename Scope, typename Provider>
class ProviderBinding: public NakedBinding<Dependency, Scope> {
  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Key<Provider>::Ptr ProviderPtr;

  mutable ProviderPtr provider;

  void validateAcyclic(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    this->template validateAcyclicos<Provider>(injector, ids);
  }

  Iface * provide(sauce::shared_ptr<Injector> injector) const {
    if (provider.get() == NULL) {
      // TODO: cache on iface somehow instead of on binding?
      provider = this->template getDependency<Provider>(injector);
    }
    return provider->provide();
  }

  void dispose(Iface * iface) const {
    assert(provider.get() != NULL);
    provider->dispose(iface);
  }
};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_PROVIDER_BINDING_H_
