#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/internal/bindings.h>
#include <sauce/internal/new_delete.h>

namespace sauce {

namespace test {
class SauceTest;
}

template<typename Module, typename NewDelete = ::sauce::internal::NewDelete>
class Injector {
private:

  typedef NewDelete _NewDelete;
  typedef Injector<Module, NewDelete> _Injector;

public:

  friend class ::sauce::test::SauceTest;
  friend class ::sauce::internal::bindings::Binding<_Injector>;

  Injector():
    new_delete() {}

  virtual ~Injector() {}

  template<typename Iface>
  Iface provide() {
    return provide<Iface>(Module::template bindings<_Injector> );
  }

  template<typename Iface>
  void dispose(Iface iface) {
    dispose<Iface>(Module::template bindings<_Injector>, iface);
  }

private:

  NewDelete new_delete;

  template<typename Iface, typename Binding>
  Iface provide(Binding * binding(Iface)) {
    return Binding::provide(*this);
  }

  template<typename Iface, typename Binding>
  void dispose(Binding * binding(Iface), Iface iface) {
    Binding::dispose(*this, iface);
  }

};

}

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_