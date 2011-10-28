#ifndef SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/bindings/all.h>

namespace sauce {
namespace internal {

/**
 * Attempts to supply a Binding to Bindings when none is found for a dependency.
 */
struct ImplicitBindings {

  /**
   * Attempt to supply a Binding at provision time.
   */
  template<typename Dependency>
  sauce::shared_ptr<Binding<Dependency> > get() const {
    throw UnboundExceptionFor<Dependency>();
  }

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
