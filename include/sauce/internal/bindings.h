#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_H_

#include <sauce/internal/generated_bindings.h>

namespace sauce {
namespace internal {
namespace bindings {

template<typename Injector>
class Binding {
  typedef typename Injector::NewDelete NewDelete;

protected:
  static NewDelete & new_delete(Injector & injector) {
    return injector.new_delete;
  }
};

template<typename Injector, typename Iface>
class Dereference:
  public Binding<Injector> {
public:
  static Iface & provide(Injector & injector) {
    return *injector.template provide<Iface *>();
  }

  static void dispose(Injector & injector, Iface & iface) {
    injector.template dispose<Iface *>(&iface);
  }
};

}
}
}

#endif // ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_H_