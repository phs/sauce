#ifndef SAUCE_SAUCE_H_
#define SAUCE_SAUCE_H_

namespace sauce {

  template<typename Injector, typename Impl>
  struct NewNoArgProvider {
    static Impl & get(Injector & injector) {
      return *new Impl();
    };
  };

  template<typename Injector, typename Impl, typename A1>
  struct New1ArgProvider {
    static Impl & get(Injector & injector) {
      return *new Impl(
        injector.template get<A1>()
      );
    };
  };

  template<typename Injector, typename Impl, typename A1, typename A2>
  struct New2ArgProvider {
    static Impl & get(Injector & injector) {
      return *new Impl(
        injector.template get<A1>(),
        injector.template get<A2>()
      );
    };
  };

  template<typename Module>
  struct Injector {
    template<typename Impl>
    Impl & get() {
      return provide<Impl>(Module::template binding<Injector<Module> >);
    }

  private:

    template<typename Impl, typename Provider>
    Impl & provide(Provider * (Impl *)) {
      return Provider::get(*this);
    }

  };

} // namespace sauce

#endif
