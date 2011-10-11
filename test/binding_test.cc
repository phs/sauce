#include <string>

#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

using ::sauce::Binder;
using ::sauce::Named;

namespace sauce {
namespace test {

struct C {};
struct D {};
struct N {};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  Injector injector(Bindings().createInjector());
  ASSERT_THROW((injector.get<C>()), ::sauce::UnboundException);
}

struct B;

struct A {
  A(SAUCE_SHARED_PTR<B>) {}
};

struct B {
  B(SAUCE_SHARED_PTR<A>) {}
};

void CircularModule(Binder & binder) {
  binder.bind<A>().to<A(B)>();
  binder.bind<B>().to<B(A)>();
}

TEST(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  Injector injector(Bindings().add(&CircularModule).createInjector());
  ASSERT_THROW((injector.get<A>()), ::sauce::CircularDependencyException);
}

void IncompleteModule(Binder & binder) {
  binder.bind<C>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(
    Bindings().add(&IncompleteModule).createInjector(),
    ::sauce::PartialBindingException);
}

void IncompleteNamedModule(Binder & binder) {
  binder.bind<A>().named<N>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialNamedBinding) {
  ASSERT_THROW(
    Bindings().add(&IncompleteNamedModule).createInjector(),
    ::sauce::PartialBindingException);
}

struct Animal {
  virtual std::string says() = 0;
};

struct Cat: Animal {
  std::string says() { return "Meow"; }
};

struct Water {};
struct Fish: Animal {
  std::string says() { return "Blub blub"; }
};

struct Farm {};
struct Cow: Animal {
  std::string says() { return "Moo"; }
};

struct Pond {
  SAUCE_SHARED_PTR<Animal> animal;

  Pond(SAUCE_SHARED_PTR<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<Water>().to<Fish()>();
  binder.bind<Animal>().named<Farm>().to<Cow()>();

  binder.bind<Pond>().to<Pond(Named<Animal, Water>)>();
}

TEST(BindingTest, shouldProvidedNamedDependencies) {
  Injector injector(Bindings().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",      (injector.get<Animal>()->says()));
  EXPECT_EQ("Blub blub", (injector.get<Animal, Water>()->says()));
  EXPECT_EQ("Moo",       (injector.get<Named<Animal, Farm> >()->says()));

  EXPECT_EQ("Blub blub", (injector.get<Pond>()->animal->says()));
}

void IncompleteScopeModule(Binder & binder) {
  binder.bind<A>().in<SingletonScope>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialScopedBinding) {
  ASSERT_THROW(
    Bindings().add(&IncompleteScopeModule).createInjector(),
    ::sauce::PartialBindingException);
}

struct Singleton {
  bool operator==(Singleton const & other) {
    return this == &other;
  }
};

struct Session {
  bool operator==(Session const & other) {
    return this == &other;
  }
};

struct Request {
  bool operator==(Request const & other) {
    return this == &other;
  }
};

struct MyScope {};

void ScopedModule(Binder & binder) {
  binder.bind<Singleton>().in<SingletonScope>().to<Singleton()>();
  binder.bind<Session>().in<SessionScope>().to<Session()>();
  binder.bind<Request>().in<RequestScope>().to<Request()>();
  binder.bind<C>().in<MyScope>().to<C()>();
  binder.bind<D>().to<D()>();
}

TEST(BindingTest, shouldProvidedScopedDependencies) {
  Injector injector(Bindings().add(&ScopedModule).createInjector());

  SAUCE_SHARED_PTR<Singleton> aSingleton = injector.get<Singleton>();
  SAUCE_SHARED_PTR<Singleton> theSameSingleton = injector.get<Singleton>();
  injector.reenter<SingletonScope>();
  SAUCE_SHARED_PTR<Singleton> aNewSingleton = injector.get<Singleton>();
  EXPECT_EQ(aSingleton, theSameSingleton);
  EXPECT_NE(aSingleton, aNewSingleton);

  SAUCE_SHARED_PTR<Session> aSession = injector.get<Session>();
  SAUCE_SHARED_PTR<Session> theSameSession = injector.get<Session>();
  injector.reenter<SessionScope>();
  SAUCE_SHARED_PTR<Session> aNewSession = injector.get<Session>();
  EXPECT_EQ(aSession, theSameSession);
  EXPECT_NE(aSession, aNewSession);

  SAUCE_SHARED_PTR<Request> aRequest = injector.get<Request>();
  SAUCE_SHARED_PTR<Request> theSameRequest = injector.get<Request>();
  injector.reenter<RequestScope>();
  SAUCE_SHARED_PTR<Request> aNewRequest = injector.get<Request>();
  EXPECT_EQ(aRequest, theSameRequest);
  EXPECT_NE(aRequest, aNewRequest);

  SAUCE_SHARED_PTR<C> aC = injector.get<C>();
  SAUCE_SHARED_PTR<C> theSameC = injector.get<C>();
  injector.reenter<MyScope>();
  SAUCE_SHARED_PTR<C> aNewC = injector.get<C>();
  EXPECT_EQ(aC, theSameC);
  EXPECT_NE(aC, aNewC);

  SAUCE_SHARED_PTR<D> aD = injector.get<D>();
  SAUCE_SHARED_PTR<D> aNewD = injector.get<D>();
  EXPECT_NE(aD, aNewD);
}

}
}