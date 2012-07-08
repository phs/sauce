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
// web.h

/**
 * This too is a library used by the application author, now to declare how incoming requests are mapped to the
 * controllers that serve them.
 */

// ********************************************************************************************************************
// clock.h

/**
 * This library just exposes the local clock, allowing the application author to sample timestamps.
 *
 * Mocking a clock for testing is a typical chore for temporal code; we will demonstrate doing this with sauce below.
 */

// Seconds since the epoch.
typedef int Timestamp;

/**
 * The clock interface.
 *
 * Typically this (and an adapter for the system clock) is supplied by the application or framework author.
 */
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
// order_model.h

/**
 * A pizza order being processed.
 */

// ********************************************************************************************************************
// routes.h

/**
 * Mappings between url patterns and controllers, supplied by the application author, in our ficticuous framework.
 */

// ********************************************************************************************************************
// place_controller.h

/**
 * Handles requests to place an order.
 */

// ********************************************************************************************************************
// status_controller.h

/**
 * Handles requests regarding an order's status.
 */

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
    // Here there is no Binder, we just call bind<Iface>() directly.
    bind<Clock>().to<SystemClock()>();
  }
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
