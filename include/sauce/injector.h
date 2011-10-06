#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>

namespace sauce {

class Bindings;

namespace internal {
class DependencyProvider;
}

class Injector {
  i::BindingMap bindingMap;

  friend class Bindings;
  friend class i::DependencyProvider;

  Injector():
    bindingMap() {}

  Injector(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get(i::BindKeys & keys) {
    i::CircularDependencyGuard<Iface> guard(keys);

    i::BindingMap::iterator i = bindingMap.find(i::BindKeyOf<Iface>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Iface>();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Iface>().get(*this, keys);
  }

public:

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get() {
    i::BindKeys keys;
    return get<Iface>(keys);
  }

};

}

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_