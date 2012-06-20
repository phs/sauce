#ifndef SAUCE_INTERNAL_INJECTIONS_PROVIDER_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_PROVIDER_INJECTION_H_

#include <cassert>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/injections/providing_injection.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * An injection that provides from the configured provider.
 */
template<typename Dependency, typename Provider>
struct ProviderInjection: public ProvidingInjection<Dependency> {
  typedef typename ProvidingInjection<Dependency>::InjectionPtr InjectionPtr;

  void validateAcyclic(InjectorPtr injector, TypeIds & ids, std::string name) const {
    this->template validateAcyclicHelper<Provider>(injector, ids, name);
  }

  typename Key<Dependency>::Ptr provide(InjectionPtr, InjectorPtr injector) const {
    return this->template getHelper<Provider>(injector, "")->get();
  }
};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_PROVIDER_INJECTION_H_
