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

struct C {};
struct D {};
struct N {};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  SAUCE_SHARED_PTR<Injector> injector(Modules().createInjector());
  ASSERT_THROW((injector->get<C>()), ::sauce::UnboundException);
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
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW((injector->get<A>()), ::sauce::CircularDependencyException);
}

void IncompleteModule(Binder & binder) {
  binder.bind<C>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteModule).createInjector(),
    ::sauce::PartialBindingException);
}

void IncompleteNamedModule(Binder & binder) {
  binder.bind<A>().named<N>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialNamedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteNamedModule).createInjector(),
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
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",      (injector->get<Animal>()->says()));
  EXPECT_EQ("Blub blub", (injector->get<Animal, Water>()->says()));
  EXPECT_EQ("Moo",       (injector->get<Named<Animal, Farm> >()->says()));

  EXPECT_EQ("Blub blub", (injector->get<Pond>()->animal->says()));
}

void IncompleteScopeModule(Binder & binder) {
  binder.bind<A>().in<SingletonScope>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialScopedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteScopeModule).createInjector(),
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

TEST(BindingTest, shouldScopeSingletonDependenciesByDefault) {
  SAUCE_SHARED_PTR<Singleton> aSingleton;
  SAUCE_SHARED_PTR<Singleton> theSameSingleton;
  SAUCE_SHARED_PTR<Singleton> aNewSingleton;

  {
    SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());
    aSingleton = injector->get<Singleton>();
    theSameSingleton = injector->get<Singleton>();
  }
  EXPECT_EQ(aSingleton, theSameSingleton);

  {
    SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());
    aNewSingleton = injector->get<Singleton>();
  }
  EXPECT_NE(aSingleton, aNewSingleton);
}

TEST(BindingTest, shouldScopeSessionDependenciesIfAsked) {
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());

  SAUCE_SHARED_PTR<Session> aSession;
  SAUCE_SHARED_PTR<Session> theSameSession;
  SAUCE_SHARED_PTR<Session> aNewSession;

  {
    SAUCE_SHARED_PTR<Injector> sessionScoped = injector->enter<SessionScope>();
    aSession = sessionScoped->get<Session>();
    theSameSession = sessionScoped->get<Session>();
  }
  EXPECT_EQ(aSession, theSameSession);

  {
    SAUCE_SHARED_PTR<Injector> sessionScoped = injector->enter<SessionScope>();
    aNewSession = sessionScoped->get<Session>();
  }
  EXPECT_NE(aSession, aNewSession);
}

TEST(BindingTest, shouldScopeRequestDependenciesIfAsked) {
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());

  SAUCE_SHARED_PTR<Request> aRequest;
  SAUCE_SHARED_PTR<Request> theSameRequest;
  SAUCE_SHARED_PTR<Request> aNewRequest;

  {
    SAUCE_SHARED_PTR<Injector> requestScoped = injector->enter<RequestScope>();
    aRequest = requestScoped->get<Request>();
    theSameRequest = requestScoped->get<Request>();
  }
  EXPECT_EQ(aRequest, theSameRequest);

  {
    SAUCE_SHARED_PTR<Injector> requestScoped = injector->enter<RequestScope>();
    aNewRequest = requestScoped->get<Request>();
  }
  EXPECT_NE(aRequest, aNewRequest);
}

TEST(BindingTest, shouldScopeCustomScopedDependenciesIfAsked) {
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());

  SAUCE_SHARED_PTR<C> aC;
  SAUCE_SHARED_PTR<C> theSameC;
  SAUCE_SHARED_PTR<C> aNewC;

  {
    SAUCE_SHARED_PTR<Injector> scoped = injector->enter<RequestScope>();
    aC = scoped->get<C>();
    theSameC = scoped->get<C>();
  }
  EXPECT_EQ(aC, theSameC);

  {
    SAUCE_SHARED_PTR<Injector> scoped = injector->enter<RequestScope>();
    aNewC = scoped->get<C>();
  }
  EXPECT_NE(aC, aNewC);
}

TEST(BindingTest, shouldNotScopeUnscopedDependencies) {
  SAUCE_SHARED_PTR<Injector> injector(Modules().add(&ScopedModule).createInjector());
  SAUCE_SHARED_PTR<D> aD = injector->get<D>();
  SAUCE_SHARED_PTR<D> aNewD = injector->get<D>();
  EXPECT_NE(aD, aNewD);
}

struct CrankyConstructorException: public std::runtime_error {
  CrankyConstructorException():
    std::runtime_error("Can't connect to something-er-other!") {}
};

struct CrankyConstructor {
  CrankyConstructor() {
    throw CrankyConstructorException();
  }
};

void EagerlyScopedModule(Binder & binder) {
  binder.bind<CrankyConstructor>().in<SingletonScope>().to<CrankyConstructor()>();
}

TEST(BindingTest, shouldProvidedScopedDependenciesEagerlyIfAsked) {
  SAUCE_SHARED_PTR<Injector> injector =
    Modules().add(&EagerlyScopedModule).createInjector();
  ASSERT_THROW(injector->eagerlyProvide<SingletonScope>(), CrankyConstructorException);
}

}
}