#ifndef SAUCE_INTERNAL_PROVIDING_INJECTION_H_
#define SAUCE_INTERNAL_PROVIDING_INJECTION_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/key.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/resolved_binding.h>

namespace sauce {
namespace internal {

/**
 * A strategy for satisfying provisions for the given interface.
 */
template<typename Dependency_, typename Scope>
class ProvidingInjection: public Binding<Dependency_, Scope> {
public:

  ProvidingInjection():
    Binding<Dependency_, Scope>() {}

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_PROVIDING_INJECTION_H_
