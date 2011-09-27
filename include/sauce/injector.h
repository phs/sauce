#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <stdexcept>

#include <sauce/memory.h>
#include <sauce/internal/binding.h>

namespace sauce {

/**
 * Raised when no binding can be found for a given interface.
 *
 * TODO sure would be nice to know who..
 */
class UnboundException:
  public std::runtime_error {
public:
  UnboundException():
    std::runtime_error("Request for unbound interface.") {}
};

class Bindings;

class Injector {
  i::BindingMap bindingMap;

  friend class Bindings;

  Injector():
    bindingMap() {}

  Injector(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

public:

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get() {
    i::BindingMap::iterator i = bindingMap.find(i::BindKeyOf<Iface>());
    if (i == bindingMap.end()) {
      throw UnboundException();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Iface>().get(*this);
  }

};

}

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_