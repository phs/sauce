#include <gtest/gtest.h>

#include <sauce/sauce.h>

namespace sauce {
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
 * for clarity everything in this example is contained in this suite.  Comments are included where suggested file
 * breaks might occur.
 */

TEST(TutorialTest, shouldExist) {
  ASSERT_TRUE(true);
}

}
}
