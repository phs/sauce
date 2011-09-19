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

// Our mock for the new and delete operations.
//
// Gmock doesn't create templated mocks, so we roll our own specializations
// and delegate to mocked methods instead.
//
// Usually an allocator is specified by type alone: an instance is not passed.
// This is explicitly protected in the standard (requiring allocator instances
// to be exchangable and so essentially stateless.)
//
// It also prevents us from using per-instance state, which is the way gmock
// likes to do things.  To work around this, the mocked allocator state is
// kept in a common, static field (whose type is this class.)  This is the
// actual gmock, the AllocateWith (and friends) below are just
// helper types that exploit it.
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

template<typename Backing>
class AllocateWith {
public:

  typedef Backing Backing_;

  /**
   * The untemplated allocator base class.
   *
   * It holds the shared, static pointer to a backing instance.
   */
  class Base {
  protected:
    static Backing_ * backing;
  public:
    static void setBacking(Backing_ & b) {
      backing = &b;
    }
  };

  template<class C>
  class Allocator:
    public Base {
  public:

    typedef size_t    size_type;
    typedef ptrdiff_t difference_type;
    typedef C *       pointer;
    typedef C const * const_pointer;
    typedef C &       reference;
    typedef C const & const_reference;
    typedef C         value_type;

    template<typename D>
    class rebind {
    public:
      typedef Allocator<D> other;
    };

    Allocator() {
    }

    Allocator(Allocator const & a) {
    }

    template<typename D> Allocator(Allocator<D> const &) {
    }

    C * allocate(size_t size) {
      return Base::backing->template allocate<C>(size);
    }

    void deallocate(C * c, size_t size) {
      Base::backing->template deallocate<C>(c, size);
    }

  };

};

// Our mock for the construct and destroy operations.
//
// Gmock doesn't create templated mocks, so we roll our own specializations
// and delegate to mocked methods instead.
class MockInitializer {
public:

  template<class C>
  void construct(C *);

  template<class C, typename A1, typename A2>
  void construct(C *, A1, A2);

  template<class C>
  void destroy(C *);

  MOCK_METHOD1(newCoupChasis, void(CoupChasis *));
  MOCK_METHOD1(newHybridEngine, void(HybridEngine *));
  MOCK_METHOD3(newHerbie, void(Herbie *, SAUCE_SHARED_PTR<Chasis>, SAUCE_SHARED_PTR<Engine> ));

  MOCK_METHOD1(deleteCoupChasis, void(CoupChasis *));
  MOCK_METHOD1(deleteHybridEngine, void(HybridEngine *));
  MOCK_METHOD1(deleteHerbie, void(Herbie *));

};

template<>
void MockInitializer::construct<CoupChasis>(CoupChasis * coupChasis) {
  newCoupChasis(coupChasis);
}

template<>
void MockInitializer::construct<HybridEngine>(HybridEngine * hybridEngine) {
  newHybridEngine(hybridEngine);
}

template<>
void MockInitializer::construct<Herbie>(Herbie * herbie,
                                        SAUCE_SHARED_PTR<Chasis> chasis,
                                        SAUCE_SHARED_PTR<Engine> engine) {
  newHerbie(herbie, chasis, engine);
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

  ::sauce::Injector<HerbieModule, MockInitializer> injector;
  MockAllocation allocator;
  MockInitializer & initializer;

  // AllocationTest is a friend of Injector
  AllocationTest():
    injector(),
    allocator(),
    initializer(injector.initializer) {
    AllocateWith<MockAllocation>::Base::setBacking(allocator);
  }

};

TEST_F(AllocationTest, shouldProvideAndDisposeADependency) {
  CoupChasis expected;

  // Allocate and construct.  Have the mock allocator return the coup chasis above.
  EXPECT_CALL(allocator, allocateCoupChasis(1)).WillOnce(Return(&expected));
  EXPECT_CALL(initializer, newCoupChasis(&expected));

  // Destroy and deallocate
  EXPECT_CALL(initializer, deleteCoupChasis(&expected));
  EXPECT_CALL(allocator, deallocateCoupChasis(&expected, 1));

  // Ask for a Chasis
  SAUCE_SHARED_PTR<Chasis> actual = injector.get<Chasis>();
  ASSERT_EQ(&expected, actual.get());
}

// Argument matcher for smart pointers based on backing address.
MATCHER_P(SmartPointerTo, address, "") {
  return arg.get() == address;
}

TEST_F(AllocationTest, shouldProvideAndDisposeOfDependenciesTransitively) {
  CoupChasis chasis;
  HybridEngine engine;
  Herbie vehicle;

  // We don't care about the relative ordering between chasis and engine:
  // only about how they stand relative to the vehicle.
  Sequence injectedChasis, injectedEngine;

  // Allocate and construct the chasis
  EXPECT_CALL(allocator, allocateCoupChasis(1)).
  InSequence(injectedChasis).
  WillOnce(Return(&chasis));
  EXPECT_CALL(initializer, newCoupChasis(&chasis)).
  InSequence(injectedChasis);

  // Allocate and construct the engine
  EXPECT_CALL(allocator, allocateHybridEngine(1)).
  InSequence(injectedEngine).
  WillOnce(Return(&engine));
  EXPECT_CALL(initializer, newHybridEngine(&engine)).
  InSequence(injectedEngine);

  // Allocate and construct the vehicle itself, injecting the two dependencies
  EXPECT_CALL(allocator, allocateHerbie(1)).
  InSequence(injectedChasis, injectedEngine).
  WillOnce(Return(&vehicle));
  EXPECT_CALL(initializer, newHerbie(&vehicle, SmartPointerTo(&chasis), SmartPointerTo(&engine))).
  InSequence(injectedChasis, injectedEngine);

  // Destroy and deallocate the engine
  EXPECT_CALL(initializer, deleteHybridEngine(&engine)).
  InSequence(injectedEngine);
  EXPECT_CALL(allocator, deallocateHybridEngine(&engine, 1)).
  InSequence(injectedEngine);

  // Destroy and deallocate the chasis
  EXPECT_CALL(initializer, deleteCoupChasis(&chasis)).
  InSequence(injectedChasis);
  EXPECT_CALL(allocator, deallocateCoupChasis(&chasis, 1)).
  InSequence(injectedChasis);

  // Destroy and deallocate the vehicle
  // Should destroying the vehicle after its dependencies be an issue?  This
  // is simply the order that falls out of smart pointer deletion..
  EXPECT_CALL(initializer, deleteHerbie(&vehicle)).
  InSequence(injectedChasis, injectedEngine);
  EXPECT_CALL(allocator, deallocateHerbie(&vehicle, 1)).
  InSequence(injectedChasis, injectedEngine);

  // And request a Vehicle, show it's our local, and let it fall out of scope
  SAUCE_SHARED_PTR<Vehicle> actual = injector.get<Vehicle>();
  ASSERT_EQ(&vehicle, actual.get());
}

}
}