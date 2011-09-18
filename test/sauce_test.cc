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
  static ::sauce::internal::bindings::New<Injector, Chasis, CoupChasis, CoupChasis()> * bindings(
    Chasis) {
    return 0;
  }

  template<typename Injector>
  static ::sauce::internal::bindings::New<Injector, Engine, HybridEngine,
                                          HybridEngine()> * bindings(Engine) {
    return 0;
  }

  template<typename Injector>
  static ::sauce::internal::bindings::New<Injector, Vehicle, Herbie,
                                          Herbie(Chasis, Engine)> * bindings(
    Vehicle) {
    return 0;
  }

};

// Our mock for the new and delete operations.
//
// Gmock is unable to provide a general mock, so we roll one for our fixure
// types.  Our mocked methods are actually arbitrary non-templated methods,
// delegated to by template specializations for our types.
class MockInitializer {
public:

  template<class C>
  C * construct();

  template<class C, typename A1, typename A2>
  C * construct(A1, A2);

  template<class C>
  void destroy(C *);

  MOCK_METHOD0(newCoupChasis, CoupChasis * ());
  MOCK_METHOD0(newHybridEngine, HybridEngine * ());
  MOCK_METHOD2(newHerbie, Herbie * (SAUCE_SHARED_PTR<Chasis>, SAUCE_SHARED_PTR<Engine> ));

  MOCK_METHOD1(deleteCoupChasis, void(CoupChasis *));
  MOCK_METHOD1(deleteHybridEngine, void(HybridEngine *));
  MOCK_METHOD1(deleteHerbie, void(Herbie *));

};

template<>
CoupChasis * MockInitializer::construct<CoupChasis>() {
  return newCoupChasis();
}

template<>
HybridEngine * MockInitializer::construct<HybridEngine>() {
  return newHybridEngine();
}

template<>
Herbie * MockInitializer::construct<Herbie>(SAUCE_SHARED_PTR<Chasis> chasis,
                                            SAUCE_SHARED_PTR<Engine> engine) {
  return newHerbie(chasis, engine);
}

template<>
void MockInitializer::destroy<CoupChasis>(CoupChasis * coupChasis) {
  deleteCoupChasis(coupChasis);
}

template<>
void MockInitializer::destroy<HybridEngine>(HybridEngine * hybridEngine) {
  deleteHybridEngine(hybridEngine);
}

template<>
void MockInitializer::destroy<Herbie>(Herbie * herbie) {
  deleteHerbie(herbie);
}

class SauceTest:
  public ::testing::Test {
public:

  ::sauce::Injector<MyModule, MockInitializer> injector;
  MockInitializer & initializer;

  // SauceTest is a friend of Injector
  SauceTest():
    injector(),
    initializer(injector.initializer) {}

};

TEST_F(SauceTest, shouldProvideAndDisposeADependency) {
  CoupChasis chasis;
  EXPECT_CALL(initializer, newCoupChasis()).WillOnce(Return(&chasis));
  EXPECT_CALL(initializer, deleteCoupChasis(&chasis));

  SAUCE_SHARED_PTR<Chasis> actual = injector.provide<Chasis>();
  ASSERT_EQ(&chasis, actual.get());
}

// Argument matcher for smart pointers based on backing address.
MATCHER_P(SmartPointerTo, address, "") {
  return arg.get() == address;
}

TEST_F(SauceTest, shouldProvideAndDisposeOfDependenciesTransitively) {
  CoupChasis chasis;
  HybridEngine engine;
  Herbie vehicle;

  // We don't care about the relative ordering between chasis and engine:
  // only about how they stand relative to the vehicle.
  Sequence injectedChasis, injectedEngine;

  EXPECT_CALL(initializer, newCoupChasis()).
  InSequence(injectedChasis).
  WillOnce(Return(&chasis));

  EXPECT_CALL(initializer, newHybridEngine()).
  InSequence(injectedEngine).
  WillOnce(Return(&engine));

  EXPECT_CALL(initializer, newHerbie(SmartPointerTo(&chasis), SmartPointerTo(&engine))).
  InSequence(injectedChasis, injectedEngine).
  WillOnce(Return(&vehicle));

  EXPECT_CALL(initializer, deleteHybridEngine(&engine)).
  InSequence(injectedEngine);

  EXPECT_CALL(initializer, deleteCoupChasis(&chasis)).
  InSequence(injectedChasis);

  EXPECT_CALL(initializer, deleteHerbie(&vehicle)).
  InSequence(injectedChasis, injectedEngine);

  SAUCE_SHARED_PTR<Vehicle> actual = injector.provide<Vehicle>();
  ASSERT_EQ(&vehicle, actual.get());
}

}
}