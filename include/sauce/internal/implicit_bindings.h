#ifndef SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_

#include <sauce/internal/bindings/all.h>

namespace sauce {
namespace internal {

/**
 * Attempts to supply a Binding to Bindings when none is found for a dependency.
 */
struct ImplicitBindings {};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_IMPLICIT_BINDINGS_H_
