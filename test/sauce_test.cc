#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

class Chasis {};
class CoupChasis:
  public Chasis {};

class Engine {};
class HybridEngine:
  public Engine {};

class Vehicle {};
class Herbie:
  public Vehicle {
public:
  SAUCE_SHARED_PTR<Chasis> chasis;
  SAUCE_SHARED_PTR<Engine> engine;

  Herbie():
    chasis(),
    engine() {}

  Herbie(SAUCE_SHARED_PTR<Chasis> chasis, SAUCE_SHARED_PTR<Engine> engine):
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
  static ::sauce::internal::bindings::New<Injector, Engine, HybridEngine()> * bindings(Engine *) {
    return 0;
  }

  template<typename Injector>
  static ::sauce::internal::bindings::New<Injector, Vehicle, Herbie(Chasis, Engine)> * bindings(
    Vehicle *) {
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

  template<class C>
  C * new_();

  template<class C, typename A1, typename A2>
  C * new_(A1, A2);

  template<class C>
  void delete_(C *);

  MOCK_METHOD0(newCoupChasis, CoupChasis * ());
  MOCK_METHOD0(newHybridEngine, HybridEngine * ());
  MOCK_METHOD2(newHerbie, Herbie * (SAUCE_SHARED_PTR<Chasis>, SAUCE_SHARED_PTR<Engine> ));

  MOCK_METHOD1(deleteChasis, void(Chasis *));
  MOCK_METHOD1(deleteEngine, void(Engine *));
  MOCK_METHOD1(deleteVehicle, void(Vehicle *));

};

template<>
CoupChasis * MockNewDelete::new_<CoupChasis>() {
  return newCoupChasis();
}

template<>
HybridEngine * MockNewDelete::new_<HybridEngine>() {
  return newHybridEngine();
}

template<>
Herbie * MockNewDelete::new_<Herbie>(SAUCE_SHARED_PTR<Chasis> chasis,
                                     SAUCE_SHARED_PTR<Engine> engine) {
  return newHerbie(chasis, engine);
}

template<>
void MockNewDelete::delete_<Chasis>(Chasis * chasis) {
  deleteChasis(chasis);
}

template<>
void MockNewDelete::delete_<Engine>(Engine * engine) {
  deleteEngine(engine);
}

template<>
void MockNewDelete::delete_<Vehicle>(Vehicle * vehicle) {
  deleteVehicle(vehicle);
}

class SauceTest:
  public ::testing::Test {
public:

  ::sauce::Injector<MyModule, MockNewDelete> injector;
  MockNewDelete & newDelete;

  // SauceTest is a friend of Injector
  SauceTest():
    injector(),
    newDelete(injector.newDelete) {}

};

TEST_F(SauceTest, shouldProvideAndDisposeADependency) {
  CoupChasis chasis;
  EXPECT_CALL(newDelete, newCoupChasis()).WillOnce(Return(&chasis));
  EXPECT_CALL(newDelete, deleteChasis(&chasis));

  SAUCE_SHARED_PTR<Chasis> actual = injector.provide<Chasis>();
  ASSERT_EQ(&chasis, actual.get());
}

// Argument matcher for smart pointers based on backing address.
MATCHER_P(SmartPointerTo, value, "") {
  return arg.get() == value;
}

TEST_F(SauceTest, shouldProvideAndDisposeOfDependenciesTransitively) {
  CoupChasis chasis;
  HybridEngine engine;
  Herbie vehicle;

  // We don't care about the relative ordering between chasis and engine:
  // only about how they stand relative to the vehicle.
  Sequence injectedChasis, injectedEngine;

  EXPECT_CALL(newDelete, newCoupChasis()).
  InSequence(injectedChasis).
  WillOnce(Return(&chasis));

  EXPECT_CALL(newDelete, newHybridEngine()).
  InSequence(injectedEngine).
  WillOnce(Return(&engine));

  EXPECT_CALL(newDelete, newHerbie(SmartPointerTo(&chasis), SmartPointerTo(&engine))).
  InSequence(injectedChasis, injectedEngine).
  WillOnce(Return(&vehicle));

  EXPECT_CALL(newDelete, deleteEngine(&engine)).
  InSequence(injectedEngine);

  EXPECT_CALL(newDelete, deleteChasis(&chasis)).
  InSequence(injectedChasis);

  EXPECT_CALL(newDelete, deleteVehicle(&vehicle)).
  InSequence(injectedChasis, injectedEngine);

  SAUCE_SHARED_PTR<Vehicle> actual = injector.provide<Vehicle>();
  ASSERT_EQ(&vehicle, actual.get());
}

}
}