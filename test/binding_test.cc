#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

struct Store {};
struct DBStore: public Store {};

struct Session {};
struct CookieSession: public Session {};

struct Request {};
struct HttpRequest: public Request {};

struct Response {};
struct HttpResponse: public Response {};

struct Controller {};
struct WelcomeController: public Controller {

  SAUCE_SHARED_PTR<Store> store;
  SAUCE_SHARED_PTR<Session> session;
  SAUCE_SHARED_PTR<Request> request;
  SAUCE_SHARED_PTR<Response> response;

  WelcomeController(SAUCE_SHARED_PTR<Store> store,
                    SAUCE_SHARED_PTR<Session> session,
                    SAUCE_SHARED_PTR<Request> request,
                    SAUCE_SHARED_PTR<Response> response):
    store(store),
    session(session),
    request(request),
    response(response) {}

};

struct WebAppModule: ::sauce::AbstractModule {
  void configure() {
    bind<Store, sauce::Unnamed>().to<DBStore()>();
    bind<Session, sauce::Unnamed>().to<CookieSession()>();
    bind<Request, sauce::Unnamed>().to<HttpRequest()>();
    bind<Response, sauce::Unnamed>().to<HttpResponse()>();
    bind<Controller, sauce::Unnamed>().to<WelcomeController(Store, Session, Request, Response)>();
  }
};

struct BindingTest:
  public ::testing::Test {

  Injector injector;

  BindingTest():
    injector(Bindings().add(WebAppModule()).createInjector()) {}

  virtual void SetUp() {}

  virtual void TearDown() {}
};

TEST_F(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  Injector injector(Bindings().createInjector());
  ASSERT_THROW((injector.get<Request, sauce::Unnamed>()), ::sauce::UnboundException);
}

struct B;

struct A {
  A(SAUCE_SHARED_PTR<B> ) {}
};

struct B {
  B(SAUCE_SHARED_PTR<A> ) {}
};

void CircularModule(sauce::Binder & binder) {
  binder.bind<A, sauce::Unnamed>().to<A(B)>();
  binder.bind<B, sauce::Unnamed>().to<B(A)>();
}

TEST_F(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  Injector injector(Bindings().add(&CircularModule).createInjector());
  ASSERT_THROW((injector.get<A, sauce::Unnamed>()), ::sauce::CircularDependencyException);
}

void IncompleteModule(sauce::Binder & binder) {
  binder.bind<A, sauce::Unnamed>();
}

TEST_F(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(Bindings().add(&IncompleteModule).createInjector(), ::sauce::PartialBindingException);
}

}
}