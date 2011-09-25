#include <sauce/bindings.h>

namespace sauce {

Bindings::Bindings():
  bindingMap(),
  binder(bindingMap) {}

Bindings & Bindings::add(Module module) {
  module(binder);
  return *this;
}

Injector Bindings::createInjector() {
  return Injector(bindingMap);
}

}