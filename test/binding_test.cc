#include <string>
#include <stdexcept>

#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

using ::sauce::Binder;
using ::sauce::Named;

namespace sauce {
namespace test {

struct Bound {};

void BoundModule(Binder & binder) {
  binder.bind<Bound>().to<Bound()>();
}

TEST(BindingTest, shouldProvideBoundDependenciesAndTheirProvidersToo) {
  sauce::shared_ptr<Injector> injector(Modules().add(&BoundModule).createInjector());

  // We can get an instance, or a provider
  sauce::shared_ptr<Bound> explicitlyBound = injector->get<Bound>();
  sauce::shared_ptr<Provider<Bound> > provider = injector->get<Provider<Bound> >();
}

void ForgotTheParensModule(Binder & binder) {
  binder.bind<Bound>().to<Bound>();
}

TEST(BindingTest, shouldInterpretNonFunctionTypesAsNoArgumentConstructors) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ForgotTheParensModule).createInjector());

  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<Provider<Bound> > provider = injector->get<Provider<Bound> >();
}

struct PureVirtual {
  virtual std::string says() = 0;
};

struct PureVirtualImpl: public PureVirtual {
  std::string says() {
    return "impl!";
  }
};

struct NeedsPureVirtual {
  sauce::shared_ptr<PureVirtual> pure;
  explicit NeedsPureVirtual(sauce::shared_ptr<PureVirtual> pure):
    pure(pure) {}
};

void UnnamedPureVirtualModule(Binder & binder) {
  binder.bind<PureVirtual>().to<PureVirtualImpl()>();
  binder.bind<NeedsPureVirtual>().to<NeedsPureVirtual(PureVirtual &)>();
}

/**
 * Ensure a work-around exists for a wart I introduce while abusing syntax.
 *
 * Sauce uses virtually no macros.  So, the injected signatures such as
 * NeedsPureVirtual(PureVirtual &) above are actual language objects.  Specifically they are
 * function types.  However, some function types are illegal, such as those that pass by value
 * uncopyable objects (such as instances of a pure virutal interface by value.)
 *
 * Notice this only affects unnamed dependencies, since the Named<> type wrapper otherwise
 * protects us.
 *
 * Sauce doesn't really care too much about the types of injected dependencies in this sense,
 * since it's going to actually pass in everything as smart pointers anyway.  The choice of using
 * bare types is a convenience to the user, to keep bindings as uncluttered as possible.
 *
 * Therefore, let's abuse the system a little further.  Anywhere an injected type is needed, it
 * can named either as itself, or as a reference to itself (as in PureVirtual & above).  If Sauce
 * sees any reference types in this way, it will simply pull the reference modifier off (via a
 * certain template specialization) and treat it as if the & was never there.
 *
 * I don't feel guilty about this altering of the space of possible bound types, since (smart)
 * pointers to reference types are illegal anyway.
 */
TEST(BindingTest, shouldAllowBindingUnnamedPureVirtualDependenciesByReference) {
  sauce::shared_ptr<Injector> injector(Modules().add(&UnnamedPureVirtualModule).createInjector());
  EXPECT_EQ("impl!", (injector->get<NeedsPureVirtual>()->pure->says()));
}

struct CustomBuilt {};

struct CustomBuiltProvider: AbstractProvider<CustomBuilt> {
  CustomBuilt * provide() {
    return new CustomBuilt();
  }

  void dispose(CustomBuilt * customBuilt) {
    delete customBuilt;
  }
};

void ProviderModule(Binder & binder) {
  binder.bind<CustomBuilt>().toProvider<CustomBuiltProvider()>();
}

TEST(BindingTest, shouldProvideDependenciesBoundToProvidersAndTheProvidersToo) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ProviderModule).createInjector());

  // We can get an instance, or a provider
  sauce::shared_ptr<CustomBuilt> customBuilt = injector->get<CustomBuilt>();
  sauce::shared_ptr<Provider<CustomBuilt> > provider = injector->get<Provider<CustomBuilt> >();
}

struct Unbound {};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  sauce::shared_ptr<Injector> injector(Modules().createInjector());
  ASSERT_THROW(injector->get<Unbound>(), ::sauce::UnboundException);
}

TEST(BindingTest, shouldImplicitlyBindTheInjectorItself) {
  sauce::shared_ptr<Injector> expected = Modules().createInjector();
  sauce::shared_ptr<Injector> actual = expected->get<Injector>();
  ASSERT_EQ(expected, actual);
}

struct HasBound {
  virtual sauce::shared_ptr<Bound> getBound() = 0;
};

struct HasSetter: public HasBound {
  sauce::shared_ptr<Bound> bound;

  HasSetter():
    HasBound(),
    bound() {}

  void setBound(sauce::shared_ptr<Bound> bound) {
    this->bound = bound;
  }

  sauce::shared_ptr<Bound> getBound() {
    return bound;
  }
};

void SetterModule(Binder & binder) {
  binder.bind<Bound>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasBound>().to<HasSetter()>().setting(&HasSetter::setBound);
}

TEST(BindingTest, shouldInjectBoundSetters) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  // Equal since Bound is a singleton
  // ASSERT_EQ(bound, injector->get<HasBound>()->getBound()); // TODO
}

struct Dog;

struct Tail {
  Tail(sauce::shared_ptr<Dog>) {}
};

struct Dog {
  Dog(sauce::shared_ptr<Tail>) {}
};

void CircularModule(Binder & binder) {
  binder.bind<Tail>().in<SingletonScope>().to<Tail(Dog)>();
  binder.bind<Dog>().in<SingletonScope>().to<Dog(Tail)>();
}

TEST(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  sauce::shared_ptr<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW(injector->get<Tail>(), ::sauce::CircularDependencyException);
}

TEST(BindingTest, shouldThrowExceptionWhenEagerlyProvidingCircularDependency) {
  sauce::shared_ptr<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW(injector->eagerlyProvide<SingletonScope>(), ::sauce::CircularDependencyException);
}

struct IncompletelyBound {};

void IncompleteModule(Binder & binder) {
  binder.bind<IncompletelyBound>() /* to ...? */;
}

TEST(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteModule).createInjector(),
    ::sauce::PartialBindingException);
}

struct Animal {
  virtual std::string says() = 0;
};

struct Cat: Animal {
  std::string says() { return "Meow"; }
};

struct LieutenantShinysides {};
struct Fish: Animal {
  std::string says() { return "Blub blub"; }
};

struct Meatloaf {};
struct Cow: Animal {
  std::string says() { return "Moo"; }
};

struct CowProvider: AbstractProvider<Animal> {
  Animal * provide() {
    return new Cow();
  }

  void dispose(Animal * cow) {
    delete cow;
  }
};

struct Bird: Animal {
  std::string says() { return "Cheep cheep"; }
};

struct Pond {
  sauce::shared_ptr<Animal> animal;

  Pond(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

struct BirdCage {
  sauce::shared_ptr<Animal> animal;

  BirdCage(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<LieutenantShinysides>().to<Fish()>();
  binder.bind<Animal>().named<Meatloaf>().toProvider<CowProvider()>();
  binder.bind<Animal>().named("tweety").to<Bird()>();

  binder.bind<Pond>().to<Pond(Named<Animal, LieutenantShinysides>)>();
  binder.bind<BirdCage>().to<BirdCage(Animal &)>().naming(0, "tweety");
}

TEST(BindingTest, shouldProvidedNamedDependencies) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",         (injector->get<Animal>()->says()));
  EXPECT_EQ("Blub blub",    (injector->get<Animal, LieutenantShinysides>()->says()));
  EXPECT_EQ("Moo",          (injector->get<Named<Animal, Meatloaf> >()->says()));
  EXPECT_EQ("Cheep cheep",  (injector->get<Animal>("tweety")->says()));

  EXPECT_EQ("Blub blub",    (injector->get<Pond>()->animal->says()));
  EXPECT_EQ("Cheep cheep",  (injector->get<BirdCage>()->animal->says()));
}

TEST(BindingTest, shouldProvidedNamedDependencyProviders) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  sauce::shared_ptr<Provider<Animal> > animalProvider = injector->get<Provider<Animal> >();
  EXPECT_EQ("Meow", animalProvider->get()->says());

  sauce::shared_ptr<Provider<Named<Animal, LieutenantShinysides> > > namedImplicitProvider =
    injector->get<Provider<Named<Animal, LieutenantShinysides> > >();
  EXPECT_EQ("Blub blub", namedImplicitProvider->get()->says());

  sauce::shared_ptr<Provider<Named<Animal, Meatloaf> > > namedExplicitProvider =
    injector->get<Provider<Named<Animal, Meatloaf> > >();
  EXPECT_EQ("Moo", namedExplicitProvider->get()->says());

  sauce::shared_ptr<Provider<Animal> > dynamicallyNamedProvider =
    injector->get<Provider<Animal> >("tweety");
  EXPECT_EQ("Cheep cheep", dynamicallyNamedProvider->get()->says());
}

void BirdDynamicModule(Binder & binder) {
  binder.bind<Animal>().named("tweety").to<Bird()>();
}

void CatDynamicModule(Binder & binder) {
  binder.bind<Animal>().named("sylvester").to<Cat()>();
}

TEST(BindingTest, shouldProvidedDynamicallyNamedDependenciesAcrossModules) {
  Modules modules;
  modules.add(&BirdDynamicModule).add(&CatDynamicModule);
  sauce::shared_ptr<Injector> injector(modules.createInjector());

  EXPECT_EQ("Cheep cheep", (injector->get<Animal>("tweety")->says()));
  EXPECT_EQ("Meow", (injector->get<Animal>("sylvester")->says()));
}

void DynamicallyNamedBindingWithADependencyModule(Binder & binder) {
  binder.bind<Animal>().to<Bird()>();
  binder.bind<BirdCage>().named("golden").to<BirdCage(Animal &)>();
}

TEST(BindingTest, shouldProvideDynamicallyNamedRequestsThatHaveDependencies) {
  Modules modules;
  modules.add(&DynamicallyNamedBindingWithADependencyModule);
  sauce::shared_ptr<Injector> injector(modules.createInjector());

  // This does *not* throw UnboundException (this is a regression test.)
  injector->get<BirdCage>("golden");
}

void IncompleteNamedModule(Binder & binder) {
  binder.bind<IncompletelyBound>().named<LieutenantShinysides>() /* to ...? */;
}

TEST(BindingTest, shouldThrowExceptionOnPartialNamedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteNamedModule).createInjector(),
    ::sauce::PartialBindingException);
}

void IncompleteScopeModule(Binder & binder) {
  binder.bind<IncompletelyBound>().in<SingletonScope>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialScopedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteScopeModule).createInjector(),
    ::sauce::PartialBindingException);
}

struct SelfInterested {
  sauce::weak_ptr<SelfInterested> self;

  SelfInterested():
    self() {}

  void setSelf(sauce::weak_ptr<SelfInterested> self) {
    this->self = self;
  }
};

void SelfInterestedModule(Binder & binder) {
  binder.bind<SelfInterested>().to<SelfInterested>();
}

TEST(BindingTest, shouldInjectSelfWeakPointersAutomaticallyIfSetterExists) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SelfInterestedModule).createInjector());
  sauce::shared_ptr<SelfInterested> selfInterested = injector->get<SelfInterested>();
  ASSERT_EQ(selfInterested, selfInterested->self.lock());
}

}
}
