#ifndef SAUCE_SAUCE_BINDINGS_H_
#define SAUCE_SAUCE_BINDINGS_H_

#include <sauce/binder.h>
#include <sauce/injector.h>
#include <sauce/internal/binding.h>

namespace sauce {

/**
 * A base class that modules implemented as classes might derive from.
 *
 * Such a module would override configure() and call bind() directly, instead of handling an
 * explicit Binder.
 */
class AbstractModule {
  Binder * binder;

  /**
   * RIAA object to protecte the state of AbtractModule::binder.
   */
  class Guard {
    AbstractModule * module;
    Binder * previousBinder;

    friend class AbstractModule;

    Guard(AbstractModule * module, Binder * binder):
      module(module),
      previousBinder(module->binder) {
      module->binder = binder;
    }

    ~Guard() {
      module->binder = previousBinder;
    }
  };

  friend class Guard;

protected:

  AbstractModule():
    binder(NULL) {}

  /**
   * Override in derived classes to declare bindings.
   */
  virtual void configure() = 0;

  /**
   * Begin binding the chosen interface.
   */
  template<typename Iface>
  Bind<Iface> bind() {
    return binder->bind<Iface>();
  }

public:

  void operator()(Binder & binder) {
    Guard guard(this, &binder);
    configure();
  }

};

/**
 * A factory that accepts Modules and creates Injectors.
 */
class Bindings {
  i::BindingMap bindingMap;
  Binder binder;
public:

  /**
   * Create an empty Bindings.
   */
  Bindings():
    bindingMap(),
    binder(bindingMap) {}

  /**
   * Add the bindings defined by the given Module instance.
   *
   * The module here is any value providing operator()(Binding & bindings).
   *
   * An Injector created after adding a module will understand how to provide dependencies
   * specified by that module.
   */
  template<typename Module>
  Bindings & add(Module module) {
    module(binder);
    bindingMap.throwPending();
    return *this;
  }

  /**
   * Create an Injector that can provide dependencies specified by all added Modules.
   *
   * Any modules added after an Injector is created will have no effect on that Injector.
   */
  Injector createInjector() {
    return Injector(bindingMap);
  }

};

}

#endif // ifndef SAUCE_SAUCE_BINDINGS_H_