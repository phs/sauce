#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_H_

#include <sauce/internal/generated_bindings.h>

namespace sauce { namespace internal { namespace bindings {

  template<typename Injector>
  class Binding {
    typedef Injector _Injector;
    typedef typename Injector::_NewDelete _NewDelete;

  protected:
    static _NewDelete & new_delete(_Injector & injector) {
      return injector.new_delete;
    }
  };

  template<typename Injector, typename Iface>
  class Dereference: public Binding<Injector> {
  public:
    static Iface & provide(Injector & injector) {
      return *injector.template provide<Iface *>();
    };

    static void dispose(Injector & injector, Iface & iface) {
      injector.template dispose<Iface *>(&iface);
    };
  };

} } } // namespace bindings, namespace internal, namespace sauce

#endif