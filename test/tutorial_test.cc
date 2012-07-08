#include <string>
#include <utility>

#include <gtest/gtest.h>

#include <sauce/sauce.h>

namespace sauce_tutorial { // Put in a different namespace, forcing us to show off "using" statements.
namespace test {

/**
 * This suite is intended to be a complete (if stubbed) example of how sauce might be used to manage the dependencies
 * of a typical MVC-like application.  Unlike binding_test, whose aim is coverage across all variations of binding and
 * use, the focus here is on clarity and documentation.
 *
 * Suppose we are creating a web application allowing a Mom & Pop pizza parlour to accept orders online.  Customers can
 * choose toppings, sauce (ha!) and crust, specify take-out or delivery (giving an address as needed) and later inspect
 * the progress of their order.  An employee at the store uses a similar interface to declare when an order has
 * started, left for delivery, etc.  This application runs in a three-tier architecture of a web server backed by app
 * processes talking to a single relational database.
 *
 * Even in this simple application there is complexity to manage, which can be addressed by following the MVC pattern.
 * Vanilla MVC articulates a useful separation of concerns and wraps each in an object.  However it is silent about how
 * those objects are ultimately assembled into the final application; this is where dependency injection (and sauce)
 * can help.
 *
 * Since the point of the technique is to keep components decoupled and unaware of each other, a real application would
 * likely spread its components out across many headers and compilation units.  This poses no problem for sauce, but
 * for clarity everything in this example is contained in this suite.  Comments indicate where suggested file breaks
 * might occur.
 */

// ********************************************************************************************************************
// orm.h

/**
 * This is not part of the pizza application proper, but is a library used by the application author to manage access
 * to the database.  It does so by materializing rows as application objects in memory, hiding details (like SQL) from
 * the application author.
 */

// ********************************************************************************************************************
// clock.h

/**
 * This is a library that exposes the local clock, allowing the application author to sample timestamps.
 *
 * Mocking a clock for testing is a typical chore for temporal code; we will demonstrate doing this with sauce below.
 */

typedef int Timestamp;

struct Clock {
  virtual Timestamp timestamp() = 0;
};

/**
 * "Real" clock implementation.
 *
 * Returned timestamps are taken from a counter that is bumped on each call to suggest an actual clock.
 */
struct SystemClock: public Clock {
  Timestamp currentTime;

  SystemClock():
    currentTime(0) {}

  Timestamp timestamp() {
    return currentTime++;
  }
};

// ********************************************************************************************************************
// web.h

using sauce::Injector;

/**
 * This is a library to supplying url routing, controller-related interfaces and Application to tie it together.
 *
 * This example uses sauce also as a type registry for controllers, as a way of showing off implicit injector injection
 * and the dynamic name feature.
 */

// Have some interfaces.
struct Request {};
struct Response {};

struct Controller {
  virtual void serve(Request, Response) = 0;
};

typedef std::string RequestPattern;

struct Router {
  sauce::shared_ptr<Injector> injector;

  /**
   * Notice that a Router depends on having an injector itself, which sauce satisfies even though no injector is
   * explicitly bound.
   */
  Router(sauce::shared_ptr<Injector> injector):
    injector(injector) {}

  void map(RequestPattern, std::string /* controllerName */) {} // One could imagine this building up a pattern index.
  virtual void wire() = 0;                                      // Override to supposedly declare routes.

  /**
   * Accept a Request and produce a Controller suitable to serve it.
   */
  sauce::shared_ptr<Controller> route(Request) {
    // Without writing an actual router, let's just pretend the first matching RequestPattern is mapped to "place".
    std::string selectedController = "place"; // = firstMatch(request);

    /**
     * We now have the task of taking a (essentially arbitrary) string and producing the controller it names.  Sauce
     * would be the ideal way to assemble the chosen Controller, but it's not clear how to tell sauce which one we
     * want.
     *
     * The dynamic naming feature helps us here.  First, observe (below) that all controllers are bound, under the same
     * interface type (Controller) but with different string names.  Being fixed only at binding time, these names are
     * called "dynamic" names (as opposed to "static" names, which are type tags.)  Dynamic names let us make a
     * selection from known possibilities at runtime.  Specifically, they can enable a configuration-driven plugin
     * framework, which is the one thing static dependency names can't do.
     *
     * Here, we use it to select the desired controller; the name (which is always a std::string) is passed to get().
     */
    return injector->get<Controller>(selectedController);
  }
};

class Application {};

// ********************************************************************************************************************
// routes.h

/**
 * Here are the application author-supplied mappings between url patterns and controllers in our ficticuous framework.
 */

struct MyRouter: public Router {
  // TODO: Setter injection would allow us to expose an inherited setter, instead of delegating in the constructor.
  MyRouter(sauce::shared_ptr<Injector> injector):
    Router(injector) {}

  void wire() {
    map("/orders/new(/.*)?", "place");
    map("/status", "status");
  }
};

// ********************************************************************************************************************
// order_model.h

/**
 * A pizza order being processed.
 */

// ********************************************************************************************************************
// place_controller.h

/**
 * Handles requests to place an order.
 */
struct PlaceController: public Controller {
  void serve(Request, Response) {}
};

// ********************************************************************************************************************
// status_controller.h

/**
 * Handles requests regarding an order's status.
 */
struct StatusController: public Controller {
  void serve(Request, Response) {}
};

// ********************************************************************************************************************
// place_controller_test.cc

/**
 * The unit test suite for PlaceController, demonstrating how to inject mocks or stubs.
 */

using sauce::Binder;

struct StubClock: public Clock {
  Timestamp timestamp() {
    return 0;
  }
};

struct StubRequest: public Request {};
struct StubResponse: public Response {};

/**
 * The sauce module, written by the application author, that specifies bindings for this unit test suite.
 *
 * Modules are collections of bindings, which tell sauce how interface requests should be satisfied.  The application
 * author tells sauce about bindings with a "fluent" API exposed either by the passed Binder or inherited from
 * AbstractModule (see below.)
 *
 * Each binding begins with a call to bind, passing the interface to be bound as a template parameter.  Further chained
 * calls declare what concrete implementation should be used, and customize how to make or find it.
 */
void MockModule(Binder & binder) {
  /**
   * The result of bind() (an intermediate with an annoyingly complex type) is invoked in turn.
   *
   * Here, to<StubClock()>() says that requests for the interface Clock should be satisfied with instances of the
   * StubClock concrete type.
   *
   * StubClock() is actually a function type.  This is how we specify which constructor to use.  If the chosen
   * constructor takes arguments, they are treated as dependencies and satisfied first.
   */
  binder.bind<Clock>().to<StubClock()>();

  // A few more
  binder.bind<Request>().to<StubRequest()>();
  binder.bind<Response>().to<StubResponse()>();
}

// ********************************************************************************************************************
// production_module.cc

using sauce::AbstractModule;

/**
 * The sauce module, written by the application author, that specifies the bindings used when running in production.
 *
 * Concretely, a module is either a void (Binder &) function as above, or a class deriving from AbstractModule as is
 * the case here. (Technically any type providing a void operator()(Binder & binder) will do.)
 *
 * The difference is just sugar: the AbstractModule doesn't need to prefix bindings with "binder." while the function
 * is conceptually simpler and more concrete.
 */
class ProductionModule: public AbstractModule {
  void configure() {
    /**
     * Here there is no Binder, we just call bind<Iface>() directly.
     */
    // TODO: would be nice if "to<SystemClock>()" was equivalent to "to<SystemClock()>()", just an obtuse error now..
    bind<Clock>().to<SystemClock()>();

    /**
     * MyRouter depends on having access to the injector itself but no injector is bound, nor is it obvious how to
     * declare such a binding.  Sauce addresses this with an "implicit" binding: requests for the injector are
     * ultimately satisfied with the same injector that the initial e.g. get() call was made to.
     *
     * As an aside, it's generally considered bad practice to rely on this feature heavily, since it obscures what the
     * real dependencies are.  Here, the Router only wants access to Controllers bound with various dynamic names, but
     * inspecting the module alone can't tell us that: all we can see is it could request anything.  Still, the feature
     * has its uses.
     */
    bind<Router>().to<MyRouter(Injector)>();

    /**
     * Bindings can be named.  The same interface can be bound multiple times, so long as the bindings have different
     * names.  When requesting an injection, either by Injector::get or as a dependency of another binding, a name can
     * be specified to select amongst the alternative bindings.
     *
     * Names come in two flavors.  Dynamic names are opaque standard strings, where static names are type decorators:
     * instead of "bind<Controller>()" one says "bind<Named<Controller, ArbitraryTypeTag> >()".
     *
     * Bind the two controllers under dynamic names (see Router above for an example of selecting between them.)
     */
    bind<Controller>().named("place").to<PlaceController()>();
    bind<Controller>().named("status").to<StatusController()>();
  }
};

/**
 * The sauce module, written by the framework author, that specifies the bindings used when running in production.
 *
 * Modules can work cooperatively, and can be sourced from different compilation units (or dlsym'd libraries, etc.)
 */
class FrameworkModule: public AbstractModule {
  void configure() {}
};

// ********************************************************************************************************************
// main.cc

using sauce::Modules;
using sauce::Injector;

/**
 * The entry point of the application, and where sauce injects dependencies.
 */
TEST(TutorialTest, main) { // Let's pretend this is main()
  /**
   * Create an injector by first choosing what modules to use.  These are accumulated in a Modules object.
   * More than one module can be selected, allowing the application developer to mix and match.
   */
  Modules modules;
  modules.add(ProductionModule());
  modules.add(FrameworkModule());

  /**
   * After desired modules are added, use createInjector() to get an injector itself.  It is returned as a
   * sauce::shared_ptr, which is just an alias for std::shared_ptr (though std::tr1 and boost smart pointers can be
   * used, if the SAUCE_STD_TR1_SMART_PTR or SAUCE_BOOST_SMART_PTR preprocessor symbols are defined.)
   *
   */
  sauce::shared_ptr<Injector> injector = modules.createInjector();

  ASSERT_TRUE(true);
}

}
}
