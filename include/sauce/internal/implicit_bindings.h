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
 * Attempts to supply a Binding when the given Dependency is not found.
 */
template<typename Dependency>
struct ImplicitBinding {

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  static sauce::shared_ptr<Binding<Dependency> > get() {
    throw UnboundExceptionFor<Dependency>();
  }

};

/**
 * Attempts to supply a Binding to Bindings when none is found for a dependency.
 */
struct ImplicitBindings {

  /**
   * Attempt to supply a (unknown) Binding at provision time.
   */
  template<typename Dependency>
  sauce::shared_ptr<Binding<Dependency> > get() const {
    return ImplicitBinding<Dependency>::get();
  }

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
