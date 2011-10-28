#ifndef SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_

#include <sauce/exceptions.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/bindings/all.h>
#include <sauce/internal/key.h>

namespace sauce {
namespace internal {

/**
 * Attempts to supply a Binding to Bindings when none is found for a dependency.
 */
template<typename Dependency>
struct ImplicitBindings {

  template<typename AnotherDependency>
  struct rebind {
    typedef ImplicitBindings<AnotherDependency> other;
  };

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  sauce::shared_ptr<Binding<Dependency> > get() const {
    throw UnboundExceptionFor<Dependency>();
  }

};

// template<>
// struct ImplicitBindings<Named<Injector, Unnamed> > {
//   sauce::shared_ptr<Binding<Named<Injector, Unnamed> > > get() const {
//     throw UnboundExceptionFor<Named<Injector, Unnamed> >();
//   }
// };

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
