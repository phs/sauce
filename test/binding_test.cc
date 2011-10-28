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

struct HasNullaryConstructor {};
struct NoNullaryConstructor {
  explicit NoNullaryConstructor(std::string) {}
};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIfaceWithoutNullaryConstructor) {
  sauce::shared_ptr<Injector> injector(Modules().createInjector());
  ASSERT_THROW((injector->get<NoNullaryConstructor>()), ::sauce::UnboundException);
}

struct Dog;

struct Tail {
  Tail(sauce::shared_ptr<Dog>) {}
};

struct Dog {
  Dog(sauce::shared_ptr<Tail>) {}
};

void CircularModule(Binder & binder) {
  binder.bind<Tail>().to<Tail(Dog)>();
  binder.bind<Dog>().to<Dog(Tail)>();
}

TEST(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  sauce::shared_ptr<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW((injector->get<Tail>()), ::sauce::CircularDependencyException);
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

struct Pond {
  sauce::shared_ptr<Animal> animal;

  Pond(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<LieutenantShinysides>().to<Fish()>();
  binder.bind<Animal>().named<Meatloaf>().to<Cow()>();

  binder.bind<Pond>().to<Pond(Named<Animal, LieutenantShinysides>)>();
}

TEST(BindingTest, shouldProvidedNamedDependencies) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",      (injector->get<Animal>()->says()));
  EXPECT_EQ("Blub blub", (injector->get<Animal, LieutenantShinysides>()->says()));
  EXPECT_EQ("Moo",       (injector->get<Named<Animal, Meatloaf> >()->says()));

  EXPECT_EQ("Blub blub", (injector->get<Pond>()->animal->says()));
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

TEST(BindingTest, shouldImplicitlyBindTheInjectorItself) {
  sauce::shared_ptr<Injector> expected = Modules().createInjector();
  sauce::shared_ptr<Injector> actual = expected->get<Injector>();
  ASSERT_EQ(expected, actual);
}

}
}
