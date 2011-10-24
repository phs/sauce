#ifndef SAUCE_SAUCE_MODULES_H_
#define SAUCE_SAUCE_MODULES_H_

#include <sauce/binder.h>
#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/locker_factory.h>

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
   * RAII object to protect the state of AbtractModule::binder.
   */
  class BinderGuard {
    AbstractModule * module;
    Binder * previousBinder;

    friend class AbstractModule;

    BinderGuard(AbstractModule * module, Binder * binder):
      module(module),
      previousBinder(module->binder) {
      module->binder = binder;
    }

    ~BinderGuard() {
      module->binder = previousBinder;
    }
  };

  friend class BinderGuard;

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
  BindClause<Iface> bind() {
    return binder->bind<Iface>();
  }

public:

  void operator()(Binder & binder) {
    BinderGuard guard(this, &binder);
    configure();
  }

};

/**
 * A factory that accepts Modules and creates Injectors.
 */
class Modules {
  i::Bindings bindings;
  Binder binder;
public:

  /**
   * Create an empty Modules.
   */
  Modules():
    bindings(),
    binder(bindings) {}

  /**
   * Add the bindings defined by the given Module instance.
   *
   * The module here is any value providing operator()(Binding & bindings).
   *
   * An Injector created after adding a module will understand how to provide dependencies
   * specified by that module.
   */
  template<typename Module>
  Modules & add(Module module) {
    module(binder);
    bindings.throwAnyPending();
    return *this;
  }

  /**
   * Create an Injector that can provide dependencies specified by all added Modules.
   *
   * Any modules added after an Injector is created will have no effect on that
   * Injector.
   */
  sauce::shared_ptr<Injector> createInjector() const {
    sauce::auto_ptr<i::LockFactory> lockFactory(new i::NullLockFactory());
    sauce::shared_ptr<Injector> injector(new Injector(bindings, lockFactory));
    injector->setSelf(injector);
    return injector;
  }

  /**
   * Create an Injector that can provide dependencies specified by all added Modules.
   *
   * Any modules added after an Injector is created will have no effect on that
   * Injector.
   */
  template<typename Locker, typename Lockable>
  sauce::shared_ptr<Injector> createInjector(Lockable & lockable) const {
    sauce::auto_ptr<i::LockFactory> lockFactory(new i::LockerLockFactory<Locker, Lockable>(lockable));
    sauce::shared_ptr<Injector> injector(new Injector(bindings, lockFactory));
    injector->setSelf(injector);
    return injector;
  }

};

}

#endif // SAUCE_SAUCE_MODULES_H_
