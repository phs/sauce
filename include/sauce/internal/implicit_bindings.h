#ifndef SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_

#include <sauce/exceptions.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/provider.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/bindings/all.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {

struct ImplicitBindings;

/**
 * Attempts to supply a Binding when the given Dependency is not found.
 */
template<typename Dependency>
struct ImplicitBinding {
  typedef sauce::shared_ptr<Binding<Dependency> > BindingPtr;

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  static BindingPtr get(Bindings<ImplicitBindings> const &) {
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
  sauce::shared_ptr<Binding<Dependency> > get(Bindings<ImplicitBindings> const & bindings) const {
    return ImplicitBinding<Dependency>::get(bindings);
  }

};

/**
 * The implicit Injector binding.
 */
template<>
struct ImplicitBinding<Named<Injector, Unnamed> > {
  typedef sauce::shared_ptr<Binding<Named<Injector, Unnamed> > > BindingPtr;
  static BindingPtr get(Bindings<ImplicitBindings> const &) {
    BindingPtr binding(new b::InjectorBinding());
    return binding;
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
