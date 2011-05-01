#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_H_

#include <sauce/internal/generated_bindings.h>

namespace sauce { namespace internal { namespace bindings {

  template<typename Injector, class Iface>
  struct Dereference {
    static Iface & provide(Injector & injector) {
      return *injector.template provide<Iface *>();
    };
  };

} } } // namespace bindings, namespace internal, namespace sauce

#endif