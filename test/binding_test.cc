#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

class Store {};
class DBStore:
  public Store {};

class Session {};
class CookieSession:
  public Session {};

class Request {};
class HttpRequest:
  public Request {};

class Response {};
class HttpResponse:
  public Response {};

class Controller {};
class MyController:
  public Controller {};

class BindingTest:
  public ::testing::Test {
public:

  BindingTest() {}

  virtual void SetUp() {}

  virtual void TearDown() {}

};

}
}