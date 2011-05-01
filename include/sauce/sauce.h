#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

#include <sauce/internal/generated_bindings.h>

namespace sauce {

  template<typename Module>
  struct Injector {
    template<typename Dependency>
    Dependency & provide() {
      return provide<Dependency>(Module::template bindings<Injector<Module> >);
    }

  private:

    template<typename Dependency, typename Binding>
    Dependency & provide(Binding *binding (Dependency *)) {
      return Binding::provide(*this);
    }

  };

} // namespace sauce

#endif
