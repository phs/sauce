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
  sauce::shared_ptr<Injector> injector;

  ScopeTest():
    modules(),
    injector() {}

  virtual void SetUp() {
    modules.add(&ScopedModule);
    injector = modules.createInjector();
  }
};

TEST_F(ScopeTest, shouldScopeSingletonDependenciesByDefault) {
  sauce::shared_ptr<Singleton> aSingleton;
  sauce::shared_ptr<Singleton> theSameSingleton;
  sauce::shared_ptr<Singleton> aNewSingleton;

  {
    sauce::shared_ptr<Injector> singletonScoped(modules.createInjector());
    aSingleton = singletonScoped->get<Singleton>();
    theSameSingleton = singletonScoped->get<Singleton>();
  }
  EXPECT_EQ(aSingleton, theSameSingleton);

  {
    sauce::shared_ptr<Injector> singletonScoped(modules.createInjector());
    aNewSingleton = singletonScoped->get<Singleton>();
  }
  EXPECT_NE(aSingleton, aNewSingleton);
}

TEST_F(ScopeTest, shouldScopeSessionDependenciesIfAsked) {
  sauce::shared_ptr<Session> aSession;
  sauce::shared_ptr<Session> theSameSession;
  sauce::shared_ptr<Session> aNewSession;

  {
    sauce::shared_ptr<Injector> sessionScoped = injector->enter<SessionScope>();
    aSession = sessionScoped->get<Session>();
    theSameSession = sessionScoped->get<Session>();
  }
  EXPECT_EQ(aSession, theSameSession);

  {
    sauce::shared_ptr<Injector> sessionScoped = injector->enter<SessionScope>();
    aNewSession = sessionScoped->get<Session>();
  }
  EXPECT_NE(aSession, aNewSession);
}

TEST_F(ScopeTest, shouldScopeRequestDependenciesIfAsked) {
  sauce::shared_ptr<Request> aRequest;
  sauce::shared_ptr<Request> theSameRequest;
  sauce::shared_ptr<Request> aNewRequest;

  {
    sauce::shared_ptr<Injector> requestScoped = injector->enter<RequestScope>();
    aRequest = requestScoped->get<Request>();
    theSameRequest = requestScoped->get<Request>();
  }
  EXPECT_EQ(aRequest, theSameRequest);

  {
    sauce::shared_ptr<Injector> requestScoped = injector->enter<RequestScope>();
    aNewRequest = requestScoped->get<Request>();
  }
  EXPECT_NE(aRequest, aNewRequest);
}

TEST_F(ScopeTest, shouldScopeCustomScopedDependenciesIfAsked) {
  sauce::shared_ptr<C> aC;
  sauce::shared_ptr<C> theSameC;
  sauce::shared_ptr<C> aNewC;

  {
    sauce::shared_ptr<Injector> scoped = injector->enter<MyScope>();
    aC = scoped->get<C>();
    theSameC = scoped->get<C>();
  }
  EXPECT_EQ(aC, theSameC);

  {
    sauce::shared_ptr<Injector> scoped = injector->enter<MyScope>();
    aNewC = scoped->get<C>();
  }
  EXPECT_NE(aC, aNewC);
}

TEST_F(ScopeTest, shouldScopeDependenciesFromProviders) {
  sauce::shared_ptr<Provider<Session> > sessionProvider;
  sauce::shared_ptr<Session> aSession;
  sauce::shared_ptr<Session> theSameSession;
  sauce::shared_ptr<Session> aNewSession;

  {
    sauce::shared_ptr<Injector> scoped = injector->enter<SessionScope>();
    sessionProvider = scoped->get<Provider<Session> >();
    aSession = sessionProvider->get();
    theSameSession = sessionProvider->get();
  }
  EXPECT_EQ(aSession, theSameSession);

  {
    sauce::shared_ptr<Injector> scoped = injector->enter<SessionScope>();
    sessionProvider = scoped->get<Provider<Session> >();
    aNewSession = sessionProvider->get();
  }
  EXPECT_NE(aSession, aNewSession);
}

TEST_F(ScopeTest, shouldThrowExceptionWhenProvidingDependencyOutOfScope) {
  ASSERT_THROW(injector->get<Request>(), OutOfScopeException);
}

TEST_F(ScopeTest, shouldNestScopes) {
  sauce::shared_ptr<Singleton> aSingleton = injector->get<Singleton>();
  sauce::shared_ptr<Singleton> theSameSingleton;
  sauce::shared_ptr<Singleton> stillTheSameSingleton;

  {
    sauce::shared_ptr<Injector> sessionScoped = injector->enter<SessionScope>();
    sauce::shared_ptr<Session> aSession = sessionScoped->get<Session>();
    theSameSingleton = sessionScoped->get<Singleton>();

    sauce::shared_ptr<Injector> backInSingletonScope = sessionScoped->exit();
    stillTheSameSingleton = backInSingletonScope->get<Singleton>();
    ASSERT_THROW(backInSingletonScope->get<Session>(), OutOfScopeException);
  }

  EXPECT_EQ(aSingleton, theSameSingleton);
  EXPECT_EQ(aSingleton, stillTheSameSingleton);
}

TEST_F(ScopeTest, shouldThrowExceptionWhenExitingSingletonScope) {
  ASSERT_THROW(injector->exit(), ExitingSingletonScopeException);
}

TEST_F(ScopeTest, shouldReenterScopesInParallelize) {
  sauce::shared_ptr<Injector> aSessionScope = injector->enter<SessionScope>();
  sauce::shared_ptr<Injector> aNewSessionScope = injector->enter<SessionScope>();

  sauce::shared_ptr<Session> aSession = aSessionScope->get<Session>();
  sauce::shared_ptr<Session> aNewSession = aNewSessionScope->get<Session>();

  EXPECT_NE(aSession, aNewSession);
}

/*
 * There's no strong argument for this constraint, except perhaps the principle of least surprise.
 */
TEST_F(ScopeTest, shouldNotReenterScopesInSeries) {
  sauce::shared_ptr<Injector> sessionScoped = injector->enter<SessionScope>();
  ASSERT_THROW(sessionScoped->enter<SessionScope>(), AlreadyInScopeException);
}

TEST_F(ScopeTest, shouldNotScopeUnscopedDependencies) {
  sauce::shared_ptr<D> aD = injector->get<D>();
  sauce::shared_ptr<D> aNewD = injector->get<D>();
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

  sauce::shared_ptr<Injector> injector;

  EagerlyScopeTest():
    injector(Modules().add(&EagerlyScopedModule).createInjector()) {}
};

TEST_F(EagerlyScopeTest, shouldProvidedScopedDependenciesEagerlyIfAsked) {
  sauce::shared_ptr<Injector> requestScoped = injector->enter<RequestScope>();
  ASSERT_THROW(requestScoped->eagerlyProvide<RequestScope>(), CrankyConstructorException);
}

TEST_F(EagerlyScopeTest, shouldThrowExceptionWhenProvidingEagerlyOutOfScope) {
  ASSERT_THROW(injector->eagerlyProvide<RequestScope>(), OutOfScopeException);
}

struct CurrentUser {
  sauce::shared_ptr<Session> session;

  CurrentUser(sauce::shared_ptr<Session> session):
    session(session) {}
};

struct PersonalizedGreeting {
  sauce::shared_ptr<CurrentUser> currentUser;
  sauce::shared_ptr<Request> request;

  PersonalizedGreeting(sauce::shared_ptr<CurrentUser> currentUser,
                       sauce::shared_ptr<Request> request):
    currentUser(currentUser),
    request(request) {}
};

/**
 * An opaque value handed to the configured locker on construction.
 *
 * In reality this should be a mutex, such as one in boost/thread.
 */
struct LockableStub {};

/**
 * An RAII lock that accepts a templated mutex reference on construction.
 *
 * The intent is the required concept is satisfied by boost/thread's lock_guard.
 *
 * This one merely counts, as part of the test fixture.
 */
template<typename Lockable>
struct CountingLocker {
  static int reentranceCount;
  static int maxReentranceCount;

  CountingLocker(Lockable &) {
    ++reentranceCount;
    if (reentranceCount > maxReentranceCount) {
      maxReentranceCount = reentranceCount;
    }
  }

  virtual ~CountingLocker() {
    --reentranceCount;
  }
};

template<typename Lockable>
int CountingLocker<Lockable>::reentranceCount = 0;

template<typename Lockable>
int CountingLocker<Lockable>::maxReentranceCount = 0;

void CrossScopeModule(Binder & binder) {
  binder.bind<CurrentUser>().to<CurrentUser(Session)>();
  binder.bind<PersonalizedGreeting>().to<PersonalizedGreeting(CurrentUser, Request)>();
}

struct SynchronizedScopeTest:
  public ::testing::Test {

  LockableStub lock;
  sauce::shared_ptr<Injector> injector;

  SynchronizedScopeTest():
    lock(),
    injector(Modules().
             add(&ScopedModule).
             add(&CrossScopeModule).
             createInjector<CountingLocker<LockableStub> >(lock)) {}

  virtual void SetUp() {
    CountingLocker<LockableStub>::maxReentranceCount = 0;
  }
};

TEST_F(SynchronizedScopeTest, shouldOptionallyGuardProvisionsWithLockable) {
  sauce::shared_ptr<Singleton> singleton = injector->get<Singleton>();
  ASSERT_EQ(0, CountingLocker<LockableStub>::reentranceCount);
  EXPECT_EQ(1, CountingLocker<LockableStub>::maxReentranceCount);
}

TEST_F(SynchronizedScopeTest, shouldNotRecurseLockOnEachProvision) {
  injector = injector->enter<SessionScope>()->enter<RequestScope>();
  sauce::shared_ptr<PersonalizedGreeting> greeting = injector->get<PersonalizedGreeting>();
  ASSERT_EQ(0, CountingLocker<LockableStub>::reentranceCount);
  EXPECT_EQ(1, CountingLocker<LockableStub>::maxReentranceCount);
}

TEST_F(SynchronizedScopeTest, shouldOptionallyGuardEagerProvisionsWithLockable) {
  injector->eagerlyProvide<SingletonScope>();
  ASSERT_EQ(0, CountingLocker<LockableStub>::reentranceCount);
  EXPECT_EQ(1, CountingLocker<LockableStub>::maxReentranceCount);
}

}
}
