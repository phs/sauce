#ifndef SAUCE_SAUCE_BINDINGS_H_
#define SAUCE_SAUCE_BINDINGS_H_

#include <sauce/module.h>
#include <sauce/injector.h>
#include <sauce/internal/binding.h>

namespace sauce {

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
   * Add the bindings defined by the given Module.
   *
   * An Injector created after adding a module will understand how to provide
   * dependencies specified by that module.
   */
  Bindings & add(Module module) {
    module(binder);
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