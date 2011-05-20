#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce { namespace test {

  struct Chasis {};
  struct CoupChasis: public Chasis {};

  struct Engine {};
  struct HybridEngine: public Engine {};

  struct Vehicle {};
  struct Herbie: public Vehicle {
    Chasis * chasis;
    Engine * engine;

    Herbie(Chasis * chasis, Engine * engine):
      chasis(chasis),
      engine(engine) {}
  };

  class MyModule {
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
    static ::sauce::internal::bindings::New<Injector, Vehicle, Herbie(Chasis *, Engine *)> * bindings(Vehicle *) {
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
    template<class C, typename A1, typename A2> C * _new(A1, A2);
    template<class C> void _delete(C *);

    MOCK_METHOD0(new_coup_chasis, CoupChasis * ());
    MOCK_METHOD0(new_hybrid_engine, HybridEngine * ());
    MOCK_METHOD2(new_herbie, Herbie * (Chasis *, Engine *));

    MOCK_METHOD1(delete_chasis, void (Chasis *));
    MOCK_METHOD1(delete_engine, void (Engine *));
    MOCK_METHOD1(delete_vehicle, void (Vehicle *));

  };

  template<> CoupChasis * MockNewDelete::_new<CoupChasis>() {
    return new_coup_chasis();
  }

  template<> HybridEngine * MockNewDelete::_new<HybridEngine>() {
    return new_hybrid_engine();
  }

  template<> Herbie * MockNewDelete::_new<Herbie>(Chasis * chasis, Engine * engine) {
    return new_herbie(chasis, engine);
  }

  template<> void MockNewDelete::_delete<Chasis>(Chasis * chasis) {
    delete_chasis(chasis);
  }

  template<> void MockNewDelete::_delete<Engine>(Engine * engine) {
    delete_engine(engine);
  }

  template<> void MockNewDelete::_delete<Vehicle>(Vehicle * vehicle) {
    delete_vehicle(vehicle);
  }

  class SauceTest: public ::testing::Test {
  public:

    ::sauce::Injector<MyModule, MockNewDelete> injector;
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
    EXPECT_CALL(new_delete, delete_chasis(&chasis));

    Chasis & actual = injector.provide<Chasis &>();
    ASSERT_EQ(&chasis, &actual);
    injector.dispose<Chasis &>(chasis);
  }

  // TEST_F(SauceTest, should_provide_and_dispose_of_dependencies_transitively) {
  //   CoupChasis chasis;
  //   HybridEngine engine;
  //   Herbie vehicle(&chasis, &engine);
  // 
  //   // We don't care about the relative ordering between chasis and engine:
  //   // only about how they stand relative to the vehicle.
  //   Sequence injected_chasis, injected_engine;
  // 
  //   EXPECT_CALL(new_delete, new_coup_chasis()).
  //     InSequence(injected_chasis).
  //     WillOnce(Return(&chasis));
  // 
  //   EXPECT_CALL(new_delete, new_hybrid_engine()).
  //     InSequence(injected_engine).
  //     WillOnce(Return(&engine));
  // 
  //   EXPECT_CALL(new_delete, new_herbie(&chasis, &engine)).
  //     InSequence(injected_chasis, injected_engine).
  //     WillOnce(Return(&vehicle));
  // 
  //   EXPECT_CALL(new_delete, delete_vehicle(&vehicle)).
  //     InSequence(injected_chasis, injected_engine);
  // 
  //   EXPECT_CALL(new_delete, delete_engine(&engine)).
  //     InSequence(injected_engine);
  // 
  //   EXPECT_CALL(new_delete, delete_chasis(&chasis)).
  //     InSequence(injected_chasis);
  // 
  //   Vehicle & actual = injector.provide<Vehicle &>();
  //   ASSERT_EQ(&vehicle, &actual);
  //   injector.dispose<Vehicle &>(vehicle);
  // }

} } // namespace test, namespace sauce
