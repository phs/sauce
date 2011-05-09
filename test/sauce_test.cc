#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Return;

namespace sauce { namespace test {

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
    static ::sauce::internal::bindings::New<Injector, Chasis, CoupChasis()> * bindings(Chasis *) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::bindings::Dereference<Injector, Chasis> * bindings(Chasis &) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::bindings::New<Injector, Engine, HybridEngine()> * bindings(Engine *) {
      return 0;
    }

    template<typename Injector>
    static ::sauce::internal::bindings::New<Injector, Vehicle, Herbie(Chasis &, Engine &)> * bindings(Vehicle *) {
      return 0;
    }

  };

  // Our mock for the new and delete operations.
  //
  // Gmock is unable to provide a general mock, so we roll one for our fixure
  // types.  Our mocked methods are actually arbitrary non-templated methods,
  // delegated to by template specializations for our types.
  class MockNewDelete {
  public:

    template<class C> C * _new();
    template<class C> void _delete(C *);

    MOCK_METHOD0(new_coup_chasis, CoupChasis * ());
    MOCK_METHOD1(delete_chasis, void (Chasis *));

  };

  template<>
  CoupChasis * MockNewDelete::_new<CoupChasis>() {
    return new_coup_chasis();
  }

  template<>
  void MockNewDelete::_delete<Chasis>(Chasis * chasis) {
    delete_chasis(chasis);
  }

  class SauceTest : public ::testing::Test {
  public:

    ::sauce::Injector<LoveBugModule, MockNewDelete> injector;
    MockNewDelete & new_delete;

    // SauceTest is a friend of Injector
    SauceTest():
      injector(),
      new_delete(injector.new_delete) {}

  };

  TEST_F(SauceTest, should_provide_a_dependency) {
    CoupChasis chasis;
    EXPECT_CALL(new_delete, new_coup_chasis()).WillOnce(Return(&chasis));
    Chasis * actual = injector.provide<Chasis *>();
    ASSERT_EQ(&chasis, actual);
  }

  TEST_F(SauceTest, should_dispose_a_dependency) {
    CoupChasis chasis;
    EXPECT_CALL(new_delete, delete_chasis(&chasis));
    injector.dispose<Chasis *>(&chasis);
  }

  TEST_F(SauceTest, should_dereference_addresses_with_dereference_bindings) {
    CoupChasis chasis;
    EXPECT_CALL(new_delete, new_coup_chasis()).WillOnce(Return(&chasis));
    // EXPECT_CALL(new_delete, delete_chasis(&chasis));

    Chasis & actual = injector.provide<Chasis &>();
    ASSERT_EQ(&chasis, &actual);
    injector.dispose<Chasis &>(chasis);
  }

} } // namespace test, namespace sauce
