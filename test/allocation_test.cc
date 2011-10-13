#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

#include "allocate_with.h"

using ::testing::Sequence;
using ::testing::Return;

using ::sauce::Injector;
using ::sauce::Modules;

namespace sauce {
namespace test {

struct Chasis {
  Chasis() {}
  virtual ~Chasis() {}
};

struct CoupChasis:
  public Chasis {
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

struct Engine {
  Engine() {}
  virtual ~Engine() {}
};

struct HybridEngine:
  public Engine {
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

struct Vehicle {
  Vehicle() {}
  virtual ~Vehicle() {}

  virtual SAUCE_SHARED_PTR<Chasis> getChasis() const = 0;

  virtual SAUCE_SHARED_PTR<Engine> getEngine() const = 0;
};

struct Herbie:
  public Vehicle {
  static int constructed;
  static int destroyed;

  SAUCE_SHARED_PTR<Chasis> chasis;
  SAUCE_SHARED_PTR<Engine> engine;

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
 * Our mock for the new and delete operations, for use with AllocateWith.
 *
 * The AllocateWith contract assumes allocate will be disambiguated with a
 * leading tag parameter.  So, be sure to accept such parameters.
 */
struct MockAllocation {
  MOCK_METHOD2(allocate, CoupChasis * (A<CoupChasis>, size_t));
  MOCK_METHOD2(allocate, HybridEngine * (A<HybridEngine>, size_t));
  MOCK_METHOD2(allocate, Herbie * (A<Herbie>, size_t));

  MOCK_METHOD2(deallocate, void(CoupChasis *, size_t));
  MOCK_METHOD2(deallocate, void(HybridEngine *, size_t));
  MOCK_METHOD2(deallocate, void(Herbie *, size_t));
};

template<>
MockAllocation * AllocateWith<MockAllocation>::Base::backing = NULL;

struct HerbieModule: sauce::AbstractModule {
  void configure() {
    typedef AllocateWith<MockAllocation>::Allocator<int> MockAllocator;

    bind<Chasis>().to<CoupChasis()>().allocateFrom<MockAllocator>();
    bind<Engine>().to<HybridEngine()>().allocateFrom<MockAllocator>();
    bind<Vehicle>().to<Herbie(Chasis, Engine)>().allocateFrom<MockAllocator>();
  }
};

template<typename T>
struct DeallocateDeleter {
  void operator()(T * t) const {
    std::allocator<T>().deallocate(t, 1);
  }
};

struct AllocationTest:
  public ::testing::Test {

  // These point to ALLOCATED but UNINITIALIZED memory
  SAUCE_SHARED_PTR<CoupChasis> chasis;
  SAUCE_SHARED_PTR<HybridEngine> engine;
  SAUCE_SHARED_PTR<Herbie> vehicle;

  MockAllocation allocator;
  Injector injector;

  AllocationTest():
    chasis(),
    engine(),
    vehicle(),
    allocator(),
    injector(Modules().add(HerbieModule()).createInjector()) {}

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
    chasis.reset(std::allocator<CoupChasis>().allocate(1), DeallocateDeleter<CoupChasis>());
    engine.reset(std::allocator<HybridEngine>().allocate(1), DeallocateDeleter<HybridEngine>());
    vehicle.reset(std::allocator<Herbie>().allocate(1), DeallocateDeleter<Herbie>());
  }

};

TEST_F(AllocationTest, shouldProvideAndDisposeADependency) {
  EXPECT_CALL(allocator, allocate(A<CoupChasis>(), 1)).WillOnce(Return(chasis.get()));
  EXPECT_CALL(allocator, deallocate(chasis.get(), 1));

  {
    SAUCE_SHARED_PTR<Chasis> actual = injector.get<Chasis>();
    ASSERT_EQ(1, CoupChasis::constructed);
    ASSERT_EQ(chasis.get(), actual.get());
  }
  ASSERT_EQ(1, CoupChasis::destroyed);
}

TEST_F(AllocationTest, shouldProvideAndDisposeOfDependenciesTransitively) {
  // We don't care about the relative ordering between chasis and engine:
  // only about how they stand relative to the vehicle.
  Sequence chasisSeq, engineSeq;

  // Allocate the chasis and engine before the vehicle
  EXPECT_CALL(allocator, allocate(A<CoupChasis>(), 1)).
  InSequence(chasisSeq).WillOnce(Return(chasis.get()));

  EXPECT_CALL(allocator, allocate(A<HybridEngine>(), 1)).
  InSequence(engineSeq).WillOnce(Return(engine.get()));

  EXPECT_CALL(allocator, allocate(A<Herbie>(), 1)).
  InSequence(chasisSeq, engineSeq).WillOnce(Return(vehicle.get()));

  // Deallocate the chasis and engine *before* the vehicle
  // Should destroying the vehicle after its dependencies be an issue?  This
  // is simply the order that falls out of smart pointer deletion..
  EXPECT_CALL(allocator, deallocate(engine.get(), 1)).InSequence(engineSeq);
  EXPECT_CALL(allocator, deallocate(chasis.get(), 1)).InSequence(chasisSeq);
  EXPECT_CALL(allocator, deallocate(vehicle.get(), 1)).InSequence(chasisSeq, engineSeq);

  {
    ASSERT_EQ(0, CoupChasis::constructed);
    ASSERT_EQ(0, HybridEngine::constructed);
    ASSERT_EQ(0, Herbie::constructed);
    SAUCE_SHARED_PTR<Vehicle> actual = injector.get<Vehicle>();
    ASSERT_EQ(1, CoupChasis::constructed);
    ASSERT_EQ(1, HybridEngine::constructed);
    ASSERT_EQ(1, Herbie::constructed);

    ASSERT_EQ(chasis.get(), actual->getChasis().get());
    ASSERT_EQ(engine.get(), actual->getEngine().get());
    ASSERT_EQ(vehicle.get(), actual.get());
  }
  ASSERT_EQ(1, CoupChasis::destroyed);
  ASSERT_EQ(1, HybridEngine::destroyed);
  ASSERT_EQ(1, Herbie::destroyed);
}

}
}