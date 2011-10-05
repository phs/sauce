#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

class Store {};
class DBStore: public Store {};

class Session {};
class CookieSession: public Session {};

class Request {};
class HttpRequest: public Request {};

class Response {};
class HttpResponse: public Response {};

class Controller {};
class WelcomeController: public Controller {
public:

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
    bind<Store>().to<DBStore()>();
    bind<Session>().to<CookieSession()>();
    bind<Request>().to<HttpRequest()>();
    bind<Response>().to<HttpResponse()>();
    bind<Controller>().to<WelcomeController(Store, Session, Request, Response)>();
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
  ASSERT_THROW(injector.get<Request>(), ::sauce::UnboundException);
}

}
}