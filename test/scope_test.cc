#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::sauce::Binder;

namespace sauce {
namespace test {

struct C {};
struct D {};

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

struct ScopeTest:
  public ::testing::Test {

  Modules modules;
  SAUCE_SHARED_PTR<Injector> injector;

  ScopeTest():
    modules(),
    injector() {}

  virtual void SetUp() {
    modules.add(&ScopedModule);
    injector = modules.createInjector();
  }
};

TEST_F(ScopeTest, shouldScopeSingletonDependenciesByDefault) {
  SAUCE_SHARED_PTR<Singleton> aSingleton;
  SAUCE_SHARED_PTR<Singleton> theSameSingleton;
  SAUCE_SHARED_PTR<Singleton> aNewSingleton;

  {
    SAUCE_SHARED_PTR<Injector> singletonScoped(modules.createInjector());
    aSingleton = singletonScoped->get<Singleton>();
    theSameSingleton = singletonScoped->get<Singleton>();
  }
  EXPECT_EQ(aSingleton, theSameSingleton);

  {
    SAUCE_SHARED_PTR<Injector> singletonScoped(modules.createInjector());
    aNewSingleton = singletonScoped->get<Singleton>();
  }
  EXPECT_NE(aSingleton, aNewSingleton);
}

TEST_F(ScopeTest, shouldScopeSessionDependenciesIfAsked) {
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

TEST_F(ScopeTest, shouldScopeRequestDependenciesIfAsked) {
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

TEST_F(ScopeTest, shouldScopeCustomScopedDependenciesIfAsked) {
  SAUCE_SHARED_PTR<C> aC;
  SAUCE_SHARED_PTR<C> theSameC;
  SAUCE_SHARED_PTR<C> aNewC;

  {
    SAUCE_SHARED_PTR<Injector> scoped = injector->enter<MyScope>();
    aC = scoped->get<C>();
    theSameC = scoped->get<C>();
  }
  EXPECT_EQ(aC, theSameC);

  {
    SAUCE_SHARED_PTR<Injector> scoped = injector->enter<MyScope>();
    aNewC = scoped->get<C>();
  }
  EXPECT_NE(aC, aNewC);
}

TEST_F(ScopeTest, shouldNestScopes) {
  SAUCE_SHARED_PTR<Singleton> aSingleton = injector->get<Singleton>();
  SAUCE_SHARED_PTR<Singleton> theSameSingleton;

  {
    SAUCE_SHARED_PTR<Injector> sessionScoped = injector->enter<SessionScope>();
    theSameSingleton = sessionScoped->get<Singleton>();
  }

  EXPECT_EQ(aSingleton, theSameSingleton);
}

TEST_F(ScopeTest, shouldNotScopeUnscopedDependencies) {
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
  binder.bind<CrankyConstructor>().in<RequestScope>().to<CrankyConstructor()>();
}

struct EagerlyScopeTest:
  public ::testing::Test {

  SAUCE_SHARED_PTR<Injector> injector;

  EagerlyScopeTest():
    injector(Modules().add(&EagerlyScopedModule).createInjector()) {}
};

TEST_F(EagerlyScopeTest, shouldProvidedScopedDependenciesEagerlyIfAsked) {
  SAUCE_SHARED_PTR<Injector> requestScoped = injector->enter<RequestScope>();
  ASSERT_THROW(requestScoped->eagerlyProvide<RequestScope>(), CrankyConstructorException);
}

}
}
