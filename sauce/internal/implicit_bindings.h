#ifndef SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
#define SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_

#include <string>

#include <sauce/exceptions.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/provider.h>
#include <sauce/scopes.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/injection_binding.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/injections/all.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {

struct ImplicitBindings;

typedef Bindings<ImplicitBindings> ConcreteBindings;

template<typename ImplicitInjection_>
struct ImplicitBindingTraits {
  typedef ImplicitInjection_ ImplicitInjection;
  typedef typename ImplicitInjection::Dependency Dependency;
  typedef typename ImplicitInjection::InjectionPtr InjectionPtr;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;
};

/**
 * Attempts to supply a Binding when the given Dependency is not found.
 */
template<typename Dependency>
struct ImplicitBinding {
  typedef sauce::shared_ptr<ResolvedBinding<Dependency> > BindingPtr;

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  static BindingPtr get(ConcreteBindings const &, std::string) {
    throw UnboundExceptionFor<Dependency>();
  }

};

/**
 * Attempts to supply a Binding when none is found for a dependency.
 */
struct ImplicitBindings {

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  template<typename Dependency>
  sauce::shared_ptr<ResolvedBinding<Dependency> > get(
    ConcreteBindings const & bindings, std::string name) const {
    return ImplicitBinding<Dependency>::get(bindings, name);
  }

};

/**
 * The implicit Injector binding.
 */
template<>
struct ImplicitBinding<Named<Injector, Unnamed> >: ImplicitBindingTraits<inj::InjectorInjection> {
  static BindingPtr get(ConcreteBindings const &, std::string) {
    // TODO: barf unless name == unnamed()?
    InjectionPtr injection(new ImplicitInjection());
    BindingPtr binding(new InjectionBinding<Dependency, NoScope>(injection));
    return binding;
  }
};

/**
 * The implicit Provider binding for bound dependencies.
 */
template<typename ProvidedDependency, typename Name>
struct ImplicitBinding<Named<Provider<ProvidedDependency>, Name> > {
  typedef ImplicitBindingTraits<inj::ImplicitProviderInjection<ProvidedDependency, Name> > Traits;
  typedef typename Traits::ImplicitInjection ImplicitInjection;
  typedef typename Traits::Dependency Dependency;
  typedef typename Traits::InjectionPtr InjectionPtr;
  typedef typename Traits::BindingPtr BindingPtr;

  static BindingPtr get(ConcreteBindings const & bindings, std::string name) {
    typedef typename Key<ProvidedDependency>::Normalized Normalized;
    typedef typename ResolvedBinding<Normalized>::BindingPtr ProvidedBindingPtr;

    ProvidedBindingPtr providedBinding(bindings.getBinding<Normalized>(name));
    InjectionPtr injection(new ImplicitInjection(providedBinding));
    BindingPtr binding(new InjectionBinding<Dependency, NoScope>(injection));
    return binding;
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
