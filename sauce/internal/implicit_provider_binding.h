#ifndef SAUCE_INTERNAL_IMPLICIT_PROVIDER_BINDING_H_
#define SAUCE_INTERNAL_IMPLICIT_PROVIDER_BINDING_H_

#include <cassert>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {

template<typename Dependency, typename Name>
class ImplicitProviderBinding;

/**
 * A Provider for an explicitly-bound Dependency.
 */
template<typename Dependency, typename Name>
class ImplicitProvider: public Provider<Dependency> {
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename ResolvedBinding<Normalized>::BindingPtr BindingPtr;

  BindingPtr binding;
  InjectorPtr injector;

  friend class ImplicitProviderBinding<Dependency, Name>;

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
class ImplicitProviderBinding:
  public Binding<Named<Provider<Dependency>, Name>, NoScope>,
  public ProviderFriend {

  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename ResolvedBinding<Normalized>::BindingPtr ProvidedBindingPtr;
  typedef Named<Provider<Dependency>, Name> ProviderDependency;
  typedef typename Key<ProviderDependency>::Ptr ProviderPtr;

  ProvidedBindingPtr providedBinding;

  void validateAcyclic(InjectorPtr, TypeIds &) const {}

public:

  typedef typename ResolvedBinding<ProviderDependency>::BindingPtr BindingPtr;

  ImplicitProviderBinding(ProvidedBindingPtr providedBinding):
    Binding<Named<Provider<Dependency>, Name>, NoScope>(),
    ProviderFriend(),
    providedBinding(providedBinding) {}

  ProviderPtr provide(BindingPtr, InjectorPtr injector) const {
    ProviderPtr provider(new ImplicitProvider<Dependency, Name>(providedBinding, injector));
    setSelf<Dependency, Name>(provider);
    return provider;
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_IMPLICIT_PROVIDER_BINDING_H_
