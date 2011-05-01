#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

namespace sauce { namespace testing {

  struct Chasis {
    virtual const char * name() = 0;
  };

  struct CoupChasis: public Chasis {
    virtual const char * name() { return "coup"; }
  };

  struct TruckChasis: public Chasis {
    virtual const char * name() { return "truck"; }
  };

  struct Engine {
    virtual const char * name() = 0;
  };

  struct HybridEngine: public Engine {
    virtual const char * name() { return "hybrid"; }
  };

  struct DieselEngine: public Engine {
    virtual const char * name() { return "diesel"; }
  };

  struct Vehicle {
    virtual const char * name() = 0;

    virtual Chasis & getChasis() = 0;
    virtual Engine & getEngine() = 0;
  };

  struct Herbie: public Vehicle {
    Chasis & chasis;
    Engine & engine;

    Herbie(Chasis & chasis, Engine & engine):
      chasis(chasis),
      engine(engine) {}

    virtual const char * name() { return "herbie"; }
  };

  // struct CementMixer: public Vehicle {
  //   Chasis * chasis;
  //   Engine * engine;
  //
  //   void setChasis(Chasis & chasis) { this->chasis = &chasis; }
  //   void setEngine(Engine & engine) { this->engine = &engine; }
  //
  //   virtual const char * name() { return "cement mixer"; }
  // };

  class LoveBugModule {
  public:

    template<typename Injector>
    static ::sauce::internal::NewBinding<Injector, CoupChasis()> * bindings(Chasis *) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::DereferenceBinding<Injector, Chasis> * bindings(Chasis &) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::NewBinding<Injector, HybridEngine()> * bindings(Engine *) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::NewBinding<Injector, Herbie(Chasis &, Engine &)> * bindings(Vehicle *) {
      return 0;
    }

  };

  TEST(SauceTest, should_provide_a_dependency) {
    sauce::Injector<LoveBugModule> injector;
    Chasis * chasis = injector.provide<Chasis *>();
    ASSERT_STREQ("coup", chasis->name());
    delete chasis;
  }

  TEST(SauceTest, should_dereference_addresses_with_dereference_bindings) {
    sauce::Injector<LoveBugModule> injector;
    Chasis & chasis = injector.provide<Chasis &>();
    ASSERT_STREQ("coup", chasis.name());
    delete &chasis;
  }

} } // namespace testing, namespace sauce
