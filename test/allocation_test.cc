#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce>

#include "allocate_with"

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

class Chasis {
public:
  Chasis() {}
  virtual ~Chasis() {}
};

class CoupChasis:
  public Chasis {
public:
  static int constructed;
  static int destroyed;

  CoupChasis() {
    constructed += 1;
  }

  ~CoupChasis() {
    destroyed += 1;
  }
};

int CoupChasis::constructed = 0;
int CoupChasis::destroyed = 0;

class Engine {
public:
  Engine() {}
  virtual ~Engine() {}
};
class HybridEngine:
  public Engine {
public:
  static int constructed;
  static int destroyed;

  HybridEngine() {
    constructed += 1;
  }

  ~HybridEngine() {
    destroyed += 1;
  }
};

int HybridEngine::constructed = 0;
int HybridEngine::destroyed = 0;

class Vehicle {
public:
  Vehicle() {}
  virtual ~Vehicle() {}

  virtual SAUCE_SHARED_PTR<Chasis> getChasis() const = 0;

  virtual SAUCE_SHARED_PTR<Engine> getEngine() const = 0;

};
class Herbie:
  public Vehicle {
public:
  static int constructed;
  static int destroyed;

  SAUCE_SHARED_PTR<Chasis> chasis;
  SAUCE_SHARED_PTR<Engine> engine;

  Herbie():
    chasis(),
    engine() {}

  Herbie(SAUCE_SHARED_PTR<Chasis> chasis, SAUCE_SHARED_PTR<Engine> engine):
    chasis(chasis),
    engine(engine) {
    constructed += 1;
  }

  ~Herbie() {
    destroyed += 1;
  }

  SAUCE_SHARED_PTR<Chasis> getChasis() const {
    return chasis;
  }

  SAUCE_SHARED_PTR<Engine> getEngine() const {
    return engine;
  }
};

int Herbie::constructed = 0;
int Herbie::destroyed = 0;

/**
 * Our mock for the new and delete operations.
 *
 * Gmock doesn't create templated mocks, so we roll our own specializations
 * and delegate to mocked methods instead.
 */
class MockAllocation {
public:

  template<class C>
  C * allocate(size_t);

  template<class C>
  void deallocate(C *, size_t);

  MOCK_METHOD1(allocateCoupChasis, CoupChasis * (size_t));
  MOCK_METHOD1(allocateHybridEngine, HybridEngine * (size_t));
  MOCK_METHOD1(allocateHerbie, Herbie * (size_t));

  MOCK_METHOD2(deallocateCoupChasis, void(CoupChasis *, size_t));
  MOCK_METHOD2(deallocateHybridEngine, void(HybridEngine *, size_t));
  MOCK_METHOD2(deallocateHerbie, void(Herbie *, size_t));

};

template<>
CoupChasis * MockAllocation::allocate<CoupChasis>(size_t size) {
  return allocateCoupChasis(size);
}

template<>
HybridEngine * MockAllocation::allocate<HybridEngine>(size_t size) {
  return allocateHybridEngine(size);
}

template<>
Herbie * MockAllocation::allocate<Herbie>(size_t size) {
  return allocateHerbie(size);
}

template<>
void MockAllocation::deallocate<CoupChasis>(CoupChasis * coupChasis, size_t size) {
  deallocateCoupChasis(coupChasis, size);
}

template<>
void MockAllocation::deallocate<HybridEngine>(HybridEngine * hybridEngine, size_t size) {
  deallocateHybridEngine(hybridEngine, size);
}

template<>
void MockAllocation::deallocate<Herbie>(Herbie * herbie, size_t size) {
  deallocateHerbie(herbie, size);
}

class HerbieModule:
  public ::sauce::New<Chasis, CoupChasis(),
                      AllocateWith<MockAllocation>::Allocator<CoupChasis> >,
  public ::sauce::New<Engine, HybridEngine(),
                      AllocateWith<MockAllocation>::Allocator<HybridEngine> >,
  public ::sauce::New<Vehicle, Herbie(Chasis, Engine),
                      AllocateWith<MockAllocation>::Allocator<Herbie> > {
public:
  using ::sauce::New<Chasis, CoupChasis(),
                     AllocateWith<MockAllocation>::Allocator<CoupChasis> >::bindings;
  using ::sauce::New<Engine, HybridEngine(),
                     AllocateWith<MockAllocation>::Allocator<HybridEngine> >::bindings;
  using ::sauce::New<Vehicle, Herbie(Chasis, Engine),
                     AllocateWith<MockAllocation>::Allocator<Herbie> >::bindings;
};

template<>
MockAllocation * AllocateWith<MockAllocation>::Base::backing = NULL;

class AllocationTest:
  public ::testing::Test {
public:

  ::sauce::Injector<HerbieModule> injector;
  MockAllocation allocator;

  // These point to ALLOCATED but UNINITIALIZED memory
  CoupChasis * chasis;
  HybridEngine * engine;
  Herbie * vehicle;

  AllocationTest():
    injector(),
    allocator(),
    chasis(NULL),
    engine(NULL),
    vehicle(NULL) {
  }

  virtual void SetUp() {
    // Clear the static counters
    CoupChasis::constructed = 0;
    CoupChasis::destroyed = 0;
    HybridEngine::constructed = 0;
    HybridEngine::destroyed = 0;
    Herbie::constructed = 0;
    Herbie::destroyed = 0;

    // Point our configured allocator at the mock
    AllocateWith<MockAllocation>::Base::setBacking(allocator);

    // And now use a real one to get some raw memory
    chasis = std::allocator<CoupChasis>().allocate(1);
    engine = std::allocator<HybridEngine>().allocate(1);
    vehicle = std::allocator<Herbie>().allocate(1);
  }

  virtual void TearDown() {
    std::allocator<CoupChasis>().deallocate(chasis, 1);
    std::allocator<HybridEngine>().deallocate(engine, 1);
    std::allocator<Herbie>().deallocate(vehicle, 1);
  }

};

TEST_F(AllocationTest, shouldProvideAndDisposeADependency) {
  EXPECT_CALL(allocator, allocateCoupChasis(1)).WillOnce(Return(chasis));
  EXPECT_CALL(allocator, deallocateCoupChasis(chasis, 1));

  {
    SAUCE_SHARED_PTR<Chasis> actual = injector.get<Chasis>();
    ASSERT_EQ(1, CoupChasis::constructed);
    ASSERT_EQ(chasis, actual.get());
  }
  ASSERT_EQ(1, CoupChasis::destroyed);
}

TEST_F(AllocationTest, shouldProvideAndDisposeOfDependenciesTransitively) {
  // We don't care about the relative ordering between chasis and engine:
  // only about how they stand relative to the vehicle.
  Sequence injectedChasis, injectedEngine;

  // Construct the chasis
  EXPECT_CALL(allocator, allocateCoupChasis(1)).InSequence(injectedChasis).WillOnce(Return(chasis));

  // Construct the engine
  EXPECT_CALL(allocator, allocateHybridEngine(1)).InSequence(injectedEngine).WillOnce(Return(engine));

  // Construct the vehicle itself, injecting the two dependencies
  EXPECT_CALL(allocator, allocateHerbie(1)).InSequence(injectedChasis, injectedEngine).
  WillOnce(Return(vehicle));

  // Destroy the engine
  EXPECT_CALL(allocator, deallocateHybridEngine(engine, 1)).InSequence(injectedEngine);

  // Destroy the chasis
  EXPECT_CALL(allocator, deallocateCoupChasis(chasis, 1)).InSequence(injectedChasis);

  // Destroy the vehicle
  // Should destroying the vehicle after its dependencies be an issue?  This
  // is simply the order that falls out of smart pointer deletion..
  EXPECT_CALL(allocator, deallocateHerbie(vehicle, 1)).InSequence(injectedChasis, injectedEngine);

  // And request a Vehicle, show it's our local, and let it fall out of scope
  {
    SAUCE_SHARED_PTR<Vehicle> actual = injector.get<Vehicle>();
    ASSERT_EQ(1, CoupChasis::constructed);
    ASSERT_EQ(1, HybridEngine::constructed);
    ASSERT_EQ(1, Herbie::constructed);

    ASSERT_EQ(chasis, actual->getChasis().get());
    ASSERT_EQ(engine, actual->getEngine().get());
    ASSERT_EQ(vehicle, actual.get());
  }
  ASSERT_EQ(1, CoupChasis::destroyed);
  ASSERT_EQ(1, HybridEngine::destroyed);
  ASSERT_EQ(1, Herbie::destroyed);
}

}
}