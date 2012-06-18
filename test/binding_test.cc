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
  // TODO: One of these should be implicit, or one binding should specify both somehow
  binder.bind<Provider<CustomBuilt> >().to<CustomBuiltProvider()>();
  binder.bind<CustomBuilt>().toProvider<Provider<CustomBuilt> >();

  // binder.bind<CustomBuilt>().toProvider<CustomBuiltProvider()>();
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
  // binder.bind<HasBound>().to<HasSetter()>().toMethod(&HasSetter::setBound);
}

TEST(BindingTest, shouldInjectBoundSetters) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  // ASSERT_EQ(bound, injector->get<HasBound>()->getBound()); // Equal since Bound is a singleton
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

struct Pond {
  sauce::shared_ptr<Animal> animal;

  Pond(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<LieutenantShinysides>().to<Fish()>();

  // TODO
  binder.bind<Provider<Animal> >().named<Meatloaf>().to<CowProvider()>();
  binder.bind<Animal>().named<Meatloaf>().toProvider<Named<Provider<Animal>, Meatloaf> >();

  binder.bind<Pond>().to<Pond(Named<Animal, LieutenantShinysides>)>();
}

TEST(BindingTest, shouldProvidedNamedDependencies) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",      (injector->get<Animal>()->says()));
  EXPECT_EQ("Blub blub", (injector->get<Animal, LieutenantShinysides>()->says()));
  EXPECT_EQ("Moo",       (injector->get<Named<Animal, Meatloaf> >()->says()));

  EXPECT_EQ("Blub blub", (injector->get<Pond>()->animal->says()));
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

}
}
