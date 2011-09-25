#include <sauce/injector.h>

namespace sauce {

Injector::Injector():
  bindingMap() {}

Injector::Injector(i::BindingMap & bindingMap):
  bindingMap(bindingMap) {}

}