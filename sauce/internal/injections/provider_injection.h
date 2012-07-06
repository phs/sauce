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
template<typename Dependency, typename Scope, typename Provider>
class ProviderInjection: public ProvidingInjection<Dependency, Scope> {
public:
  typedef typename ProvidingInjection<Dependency, Scope>::InjectionPtr InjectionPtr;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  void validateAcyclic(InjectorPtr injector, TypeIds & ids, std::string const name) const {
    this->template validateAcyclicHelper<Provider>(injector, ids, name);
  }

  typename Key<Dependency>::Ptr provide(BindingPtr binding, InjectorPtr injector) const {
    InjectionBinding<Dependency, Scope> * raw =
      static_cast<InjectionBinding<Dependency, Scope> *>(binding.get());
    return this->template getHelper<Provider>(injector, raw->injection->getName())->get();
  }
};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_PROVIDER_INJECTION_H_
