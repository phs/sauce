#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_H_

#include <sauce/internal/generated_bindings.h>

namespace sauce { namespace internal { namespace bindings {

  template<typename Injector, class Iface>
  class Dereference {
  public:
    static Iface & provide(Injector & injector) {
      return *injector.template provide<Iface *>();
    };

    static void dispose(Injector & injector, Iface & iface) {
      // TODO: make test prove anything is required here..
    };
  };

} } } // namespace bindings, namespace internal, namespace sauce

#endif