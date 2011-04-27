#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

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

  namespace internal {

    template<typename Injector, typename F>
    struct NewBinding;

    template<typename Injector, typename Dependency>
    struct NewBinding<Injector, Dependency()> {
      static Dependency & provide(Injector & injector) {
        return *new Dependency();
      };
    };

    template<typename Injector, typename Dependency, typename A1>
    struct NewBinding<Injector, Dependency(A1)> {
      static Dependency & provide(Injector & injector) {
        return *new Dependency(
          injector.template provide<A1>()
        );
      };
    };

    template<typename Injector, typename Dependency, typename A1, typename A2>
    struct NewBinding<Injector, Dependency(A1, A2)> {
      static Dependency & provide(Injector & injector) {
        return *new Dependency(
          injector.template provide<A1>(),
          injector.template provide<A2>()
        );
      };
    };

  } // namespace internal
} // namespace sauce

#endif
