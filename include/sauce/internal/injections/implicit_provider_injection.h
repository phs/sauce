#ifndef SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_INJECTION_H_

#include <cassert>

#include <sauce/scopes.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/injections/injection.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace injections {

template<typename Dependency, typename Name>
class ImplicitProviderInjection;

/**
 * A Provider for an explicitly-bound Dependency.
 */
template<typename Dependency, typename Name>
class ImplicitProvider: public Provider<Dependency> {
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename ResolvedBinding<Normalized>::BindingPtr BindingPtr;

  BindingPtr binding;
  InjectorPtr injector;

  friend class ImplicitProviderInjection<Dependency, Name>;

  ImplicitProvider(BindingPtr binding, InjectorPtr injector):
    Provider<Dependency>(),
    binding(binding),
    injector(injector) {}

public:

  typename Key<Dependency>::Ptr get() {
    return binding->get(binding, injector);
  }
};

/**
 * An injection that provides Providers for an already-bound dependency.
 */
template<typename Dependency, typename Name>
class ImplicitProviderInjection:
  public Injection<Named<Provider<Dependency>, Name>, NoScope>,
  public ProviderFriend {

  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename ResolvedBinding<Normalized>::BindingPtr ProvidedBindingPtr;
  typedef Named<Provider<Dependency>, Name> ProviderDependency;
  typedef typename ResolvedBinding<ProviderDependency>::BindingPtr BindingPtr;
  typedef typename Key<ProviderDependency>::Ptr ProviderPtr;

  ProviderPtr provide(BindingPtr, InjectorPtr injector) const {
    ProviderPtr provider(new ImplicitProvider<Dependency, Name>(providedBinding, injector));
    setSelf<Dependency, Name>(provider);
    return provider;
  }

  TypeId getScopeKey() const {
    return typeIdOf<NoScope>();
  }

  ProvidedBindingPtr providedBinding;

public:

  ImplicitProviderInjection(ProvidedBindingPtr providedBinding):
    Injection<Named<Provider<Dependency>, Name>, NoScope>(),
    ProviderFriend(),
    providedBinding(providedBinding) {}

};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_INJECTION_H_
