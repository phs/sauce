#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

#include <sauce/internal/bindings.h>

namespace sauce {

  template<typename Module>
  struct Injector {
    template<typename Iface>
    Iface provide() {
      return provide<Iface>(Module::template bindings<Injector<Module> >);
    }

  private:

    template<typename Iface, typename Binding>
    Iface provide(Binding *binding (Iface)) {
      return Binding::provide(*this);
    }

  };

} // namespace sauce

#endif
