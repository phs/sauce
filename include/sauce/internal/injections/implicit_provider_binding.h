#ifndef SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_BINDING_H_
#define SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_BINDING_H_

#include <cassert>

#include <sauce/scopes.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/injections/injection.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {
namespace injections {

template<typename Dependency, typename Name>
class ImplicitProviderBinding;

/**
 * A Provider for an explicitly-bound Dependency.
 */
template<typename Dependency, typename Name>
class ImplicitProvider: public Provider<Dependency> {
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename Binding<Normalized>::BindingPtr BindingPtr;

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
 * A binding that provides Providers for an already-bound dependency.
 */
template<typename Dependency, typename Name>
class ImplicitProviderBinding:
  public Injection<Named<Provider<Dependency>, Name>, NoScope>,
  public ProviderFriend {

  typedef typename Key<Dependency>::Normalized Normalized;
  typedef typename Binding<Normalized>::BindingPtr ProvidedBindingPtr;
  typedef Named<Provider<Dependency>, Name> ProviderDependency;
  typedef typename Binding<ProviderDependency>::BindingPtr BindingPtr;
  typedef typename Key<ProviderDependency>::Ptr ProviderPtr;

  ProviderPtr provide(BindingPtr, InjectorPtr injector) const {
    ProviderPtr provider(new ImplicitProvider<Dependency, Name>(providedBinding, injector));
    setSelf<Dependency, Name>(provider);
    return provider;
  }

  ProvidedBindingPtr providedBinding;

public:

  ImplicitProviderBinding(ProvidedBindingPtr providedBinding):
    Injection<Named<Provider<Dependency>, Name>, NoScope>(),
    ProviderFriend(),
    providedBinding(providedBinding) {}

};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_IMPLICIT_PROVIDER_BINDING_H_
