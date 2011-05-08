#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

#include <sauce/internal/bindings.h>
#include <sauce/internal/new_delete.h>

namespace sauce {

  namespace test {
    class SauceTest;
  }

  template<typename Module, typename NewDelete = ::sauce::internal::NewDelete>
  struct Injector {

    friend class test::SauceTest;

    Injector():
      new_delete() {}

    virtual ~Injector() {}

    template<typename Iface>
    Iface provide() {
      return provide<Iface>(Module::template bindings<_Injector>);
    }

    template<typename Iface>
    void dispose(Iface iface) {
      dispose<Iface>(Module::template bindings<_Injector>, iface);
    }

  private:

    typedef Injector<Module, NewDelete> _Injector;

    NewDelete new_delete;

    template<typename Iface, typename Binding>
    Iface provide(Binding *binding (Iface)) {
      return Binding::provide(*this);
    }

    template<typename Iface, typename Binding>
    void dispose(Binding *binding (Iface), Iface iface) {
      Binding::dispose(*this, iface);
    }

  };

} // namespace sauce

#endif
