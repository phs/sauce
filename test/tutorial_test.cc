#include <map>
#include <string>
#include <utility>
#include <vector>

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
 * place orders and later inspect order status.  This application runs in a three-tier architecture of a web server
 * backed by app processes talking to a single relational database.
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
 * to the database.
 */

using sauce::AbstractProvider;

typedef std::vector<std::map<std::string, std::string> > ResultSet;

/**
 * An interface to a SQL store.
 */
struct Database {
  virtual ResultSet query(std::string) = 0;
  virtual bool mutate(std::string) = 0;
};

typedef std::vector<std::string> ValidationErrors;

/**
 * Parent type of ORM-managed models.
 */
struct Model {
  bool validate(ValidationErrors &) const { return true; }
};

/**
 * A persisted collection of models.
 *
 * Notice it depends on having access to a Database, which it received by injection.  Typically the ORM would have its
 * own way to communicate this, but I might as well show some things off.
 */
template<typename ModelType>
struct Table {
  typedef typename ModelType::Key Key;

  sauce::shared_ptr<Database> database;

  /**
   * Dependencies injected by sauce are always passes as smart pointers.  The template sauce::shared_ptr is an alias
   * for one of the standard shared_ptr implementations.
   */
  Table(sauce::shared_ptr<Database> database):
    database(database) {}

  bool create(Key & key, ModelType const & model) {
    if (database->mutate("INSERT ...")) {
      key = 17; // = fetchPrimaryKey(); /* etc */
      return true;
    } else {
      return false;
    }
  }

  ModelType read(Key const) { return ModelType(); }
  bool update(Key const, ModelType const &) { return true; }
  bool destroy(Key const) { return true; }
};

typedef std::string ConnectionURI;

/**
 * A Database exposed over a TCP connection.
 */
struct RemoteDatabase: public Database {
  RemoteDatabase(ConnectionURI) {}
  ResultSet query(std::string) { return ResultSet(); }
  bool mutate(std::string) { return true; }
};

/**
 * A provider for creating (connections to) databases.
 *
 * Providers are factories that produce instances of the templated type (Database here.)  The application author can
 * create them and subsequently declare them to sauce to use custom creation logic.
 *
 * Once this provider is bound in a module (below), whenever sauce needs a Database (perhaps while constructing a Table
 * like above) it will ask this class.
 *
 * AbstractProvider is a convenience class the application author can derive from to make a typical provider easily.
 * The provide() and dispose() methods create and destroy raw interface pointers in whatever way the application author
 * sees fit.  Sauce will ensure (by a smart pointer deleter) that raw pointers returned by provide() are eventually
 * passed to dispose on clean up.
 *
 * There is a simpler Provider<Iface> interface one may extend from as well.  It doesn't supply smart pointer deleter
 * semantics, but gives the application developer more freedom.
 */
class RemoteDatabaseProvider: public AbstractProvider<Database> {
  /**
   * Provide a naked Database pointer, doing whatever initialization that may be necessary.
   */
  Database * provide() {
    ConnectionURI uri = "mysql://..."; // = config.getConnectionURI();
    return new RemoteDatabase(uri);
  }

  /**
   * Dispose of a Database pointer returned by provide().
   */
  void dispose(Database * database) {
    RemoteDatabase * remoteDatabase = static_cast<RemoteDatabase *>(database);
    // mysqlCloseConnection(remoteDatabase->socket);
    delete remoteDatabase;
  }
};

typedef std::string Filename;

/**
 * A Database exposed as a flat file.
 */
struct FlatFileDatabase: public Database {
  FlatFileDatabase(Filename) {}
  ResultSet query(std::string) { return ResultSet(); }
  bool mutate(std::string) { return true; }
};

/**
 * Another Database provider, this time for flat file dbs.
 *
 * We'll use this to demonstrate multiple bindings for the same interface.
 */
class FlatFileDatabaseProvider: public AbstractProvider<Database> {
  Database * provide() {
    return new FlatFileDatabase("sqlite://...");
  }

  void dispose(Database * database) {
    delete database;
  }
};

// ********************************************************************************************************************
// web.h

/**
 * This is a library to supplying url routing, controller-related interfaces and an Application to tie it together.
 *
 * This example uses sauce also as a type registry for controllers, as a way of showing off implicit injector injection
 * and the dynamic name feature.
 */

using sauce::Injector;
using sauce::Provider;

// Have some interfaces.
struct Request {};
struct Response {};

struct Controller {
  virtual void serve(sauce::shared_ptr<Request>, sauce::shared_ptr<Response>) = 0;
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
  sauce::shared_ptr<Controller> route(sauce::shared_ptr<Request>) {
    // Without writing an actual router, let's just pretend the first matching RequestPattern is mapped to "status".
    std::string selectedController = "status"; // = firstMatch(request);

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

typedef std::pair<sauce::shared_ptr<Request>, sauce::shared_ptr<Response> > RequestResponsePair;

/**
 * Receives new request, response pairs from the web server.
 */
struct Acceptor {
  /**
   * Block until a request to process arrives.
   */
  virtual RequestResponsePair accept() = 0;
};

/**
 * An Acceptor supposedly driven by a local FCGI environment.
 *
 * FCGIAcceptor requires two injected dependencies, a provider for requests and one for responses.  A provider is a
 * factory that allows one to request instances of the provided type (request or response) on demand.  It allows the
 * application developer to declare a dependency on a type without committed to how many instances of that type are
 * needed.
 *
 * Since our acceptor is responsible for producing requests (with paired responses) waiting to be served, it needs an
 * unlimited number of them.  However it doesn't want to be resposible for all the assembly details of making a
 * request, it just wants an opportunity to modify it before it gets handed to the router.  An injected provider fits
 * this need well.
 */
struct FCGIAcceptor: public Acceptor {
  sauce::shared_ptr<Provider<Request> > requestProvider;
  sauce::shared_ptr<Provider<Response> > responseProvider;

  FCGIAcceptor(sauce::shared_ptr<Provider<Request> > requestProvider,
               sauce::shared_ptr<Provider<Response> > responseProvider):
    requestProvider(requestProvider),
    responseProvider(responseProvider) {}

  RequestResponsePair accept() {
    sauce::shared_ptr<Request> request = requestProvider->get();
    sauce::shared_ptr<Response> response = responseProvider->get();
    // fcgiAccept(&request.socket, &response.socket);
    return std::make_pair(request, response);
  }
};

/**
 * An application encapsulates the request cycle of single-threaded app worker.
 */
struct Application {
  sauce::shared_ptr<Acceptor> acceptor;
  sauce::shared_ptr<Router> router;

  Application(sauce::shared_ptr<Acceptor> acceptor,
              sauce::shared_ptr<Router> router):
    acceptor(acceptor),
    router(router) {}

  void run() {
    while (true) {
      serveOne();
    }
  }

  void serveOne() {
    RequestResponsePair requestResponse = acceptor->accept();
    sauce::shared_ptr<Request> request = requestResponse.first;
    sauce::shared_ptr<Response> response = requestResponse.second;

    sauce::shared_ptr<Controller> controller = router->route(request);
    controller->serve(request, response);
  }
};

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
// models.h

/**
 * A pizza order being processed.
 */
struct Order: public Model {
  typedef int Key;

  std::string getStatus() {
    return "Mmm, cheesy!";
  }
};

// ********************************************************************************************************************
// controllers.h

/**
 * Handles requests to place an order.
 */
struct PlaceController: public Controller {
  void serve(sauce::shared_ptr<Request>, sauce::shared_ptr<Response>) {}
};

/**
 * Handles requests regarding an order's status.
 */
struct StatusController: public Controller {
  sauce::shared_ptr<Table<Order> > orders;

  StatusController(sauce::shared_ptr<Table<Order> > orders):
    orders(orders) {}

  void serve(sauce::shared_ptr<Request>, sauce::shared_ptr<Response>) {
    Table<Order>::Key key = 17; // = request->getParam();
    Order order = orders->read(key);
    std::string status = order.getStatus();
    // response->write(status);
  }
};

// ********************************************************************************************************************
// modules.cc

using sauce::AbstractModule;
using sauce::Named;
using sauce::Provider;

/**
 * A type tag used as a static name, see below.
 */
struct Local {};

/**
 * The sauce module, written by the framework author, that specifies the bindings used when running in production.
 *
 * Modules can work cooperatively, and can be sourced from different compilation units (or dlsym'd libraries, etc.)
 */
class FrameworkModule: public AbstractModule {
  void configure() {
    /**
     * The result of bind() (an intermediate with an annoyingly complex type) is invoked in turn.
     *
     * Here, to<Request()>() says that requests for the interface Request should be satisfied with instances of the
     * Request concrete type.  (It's not required to have a separate interface.)
     *
     * Request() is actually a function type.  This is how we specify which constructor to use.  If the chosen
     * constructor takes arguments, they are treated as dependencies and are satisfied first.
     */
    bind<Request>().to<Request()>();
    bind<Response>().to<Response()>();

    /**
     * Notice that the injected types are references.  This side-steps a problem with how sauce abuses the type system.
     * Specifically, since Acceptor and Router each contain pure-virtual methods, they can't be passed by value.  This
     * implies it's illegal to even formulate a function type that would do so.
     *
     * Note sauce never really was going to pass by value: it uses smart pointers for everything.  The value parameter
     * syntax just happens to be less cluttered.  When this results in an illegal function type, a reference may be
     * used instead; sauce will just strip it off (and smart pointers to references don't make sense anyway.)
     */
    bind<Application>().to<Application(Acceptor &, Router &)>();

    /**
     * Notice we never bound a Provider<Request>, but only a Request.  This is an example of an implicit binding that
     * sauce supplies.  Since it knows how to make requests, it can synthesize a provider that makes them in the same
     * way.
     */
    bind<Acceptor>().to<FCGIAcceptor(Provider<Request> &, Provider<Response> &)>();
  }
};

/**
 * The sauce module, written by the application author, that specifies the bindings used when running in production.
 *
 * Modules are collections of bindings, which tell sauce how interface requests should be satisfied.  The application
 * author tells sauce about bindings with a "fluent" API exposed either by the passed Binder or inherited from
 * AbstractModule (see below.)
 *
 * Each binding begins with a call to bind, passing the interface to be bound as a template parameter.  Further chained
 * calls declare what concrete implementation should be used, and customize how to make or find it.
 *
 * Concretely, a module is either a void (Binder &) function, or a class deriving from AbstractModule as is the case
 * here. (Technically any type providing a void operator()(Binder & binder) will do.)
 *
 * The difference is just sugar: the AbstractModule doesn't need to prefix bindings with "binder." while the function
 * is conceptually simpler and more concrete.
 */
class ProductionModule: public AbstractModule {
  void configure() {
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
     * Here we bind a user-supplied provider; notice the toProvider<>() call instead of to<>().
     *
     * This also implicitly binds Provider<Database> to RemoteDatabaseProvider; requests for such a provider will be
     * satisified with RemoteDatabaseProvider.
     */
    bind<Database>().toProvider<RemoteDatabaseProvider()>();

    /**
     * Bind another provider to the Database interface.
     *
     * Bindings can be named.  The same interface can be bound multiple times, so long as the bindings have different
     * names.  When requesting an injection, either by Injector::get or as a dependency of another binding, a name can
     * be specified to select amongst the alternative bindings.
     *
     * Note that the previous binding wasn't given a name: it's effective name is sauce::Unnamed.  Likewise bindings
     * given no dynamic name (see below) use the string returned by sauce::unnamed().
     *
     * Any given binding can have either a static name or a dynamic one, but not both.  Bindings sharing a single
     * interface can mix and match amongst themselves as they please (but this may get confusing.)
     */
    bind<Database>().named<Local>().toProvider<FlatFileDatabaseProvider()>();

    /**
     * Bind the two controllers under dynamic names (see Router above for an example of selecting between them.)
     */
    bind<Controller>().named("status").to<StatusController(Table<Order>)>();

    /**
     * Bind another controller.  Also, notice we bind to PlaceController, not PlaceController().  If a function type is
     * not passed, the default constructor is assumed.
     */
    bind<Controller>().named("place").to<PlaceController>();

    /**
     * Use the orders table from the flat file database.  When declaring dependencies, choose a static name by wrapping
     * it, along with the desired type, in Named<Iface, Name>.  This applies also when using the injector directly:
     * injector->get<Named<Database, Local> >();
     */
    bind<Table<Order> >().to<Table<Order>(Named<Database, Local>)>();
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
  modules.add(FrameworkModule());

  /**
   * After desired modules are added, use createInjector() to get an injector itself.
   *
   * It is returned as a sauce::shared_ptr, which is just an alias for std::shared_ptr (though std::tr1 and boost smart
   * pointers can be used, if the SAUCE_STD_TR1_SMART_PTR or SAUCE_BOOST_SMART_PTR preprocessor symbols are defined.)
   */
  sauce::shared_ptr<Injector> injector = modules.createInjector();

  /**
   * We're now free to ask the injector to supply various interfaces.  Let's create an Application and serve a request.
   */
  sauce::shared_ptr<Application> application = injector->get<Application>();
  application->serveOne();

  ASSERT_TRUE(true);
}

}
}
