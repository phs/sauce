#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

#include <sauce/internal/bindings.h>
#include <sauce/internal/new_delete.h>

namespace sauce {

  template<typename Module, typename NewDelete = ::sauce::internal::NewDelete>
  struct Injector {

    friend class SauceTest;

    Injector():
      newDelete() {}

    template<typename Iface>
    Iface provide() {
      return provide<Iface>(Module::template bindings<Injector<Module> >);
    }

    template<typename Iface>
    void dispose(Iface iface) {
      dispose<Iface>(Module::template bindings<Injector<Module> >, iface);
    }

  private:

    const NewDelete newDelete;

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
