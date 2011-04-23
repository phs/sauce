#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

namespace sauce {

  template<typename Module>
  struct Injector {
    template<typename Dependency>
    Dependency & get() {
      return provide<Dependency>(Module::template bindings<Injector<Module> >);
    }

  private:

    template<typename Dependency, typename Provider>
    Dependency & provide(Provider *binding (Dependency *)) {
      return Provider::get(*this);
    }

  };

  namespace internal {

    template<typename Injector, typename Dependency>
    struct NewNoArgProvider {
      static Dependency & get(Injector & injector) {
        return *new Dependency();
      };
    };

    template<typename Injector, typename Dependency, typename A1>
    struct New1ArgProvider {
      static Dependency & get(Injector & injector) {
        return *new Dependency(
          injector.template get<A1>()
        );
      };
    };

    template<typename Injector, typename Dependency, typename A1, typename A2>
    struct New2ArgProvider {
      static Dependency & get(Injector & injector) {
        return *new Dependency(
          injector.template get<A1>(),
          injector.template get<A2>()
        );
      };
    };

  } // namespace internal
} // namespace sauce

#endif
