#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/internal/bindings.h>
#include <sauce/internal/new_delete.h>

namespace sauce {

namespace test {
class SauceTest;
}

template<typename Module, typename NewDelete_ = ::sauce::internal::NewDelete>
class Injector {
private:

  typedef NewDelete_ NewDelete;
  typedef Injector<Module, NewDelete> Injector_;

public:

  friend class ::sauce::test::SauceTest;
  friend class ::sauce::internal::bindings::Binding<Injector_>;

  Injector():
    new_delete() {}

  virtual ~Injector() {}

  template<typename Iface>
  Iface provide() {
    return provide<Iface>(Module::template bindings<Injector_> );
  }

  template<typename Iface>
  void dispose(Iface iface) {
    dispose<Iface>(Module::template bindings<Injector_>, iface);
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