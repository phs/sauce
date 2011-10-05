#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>

namespace sauce {

class Bindings;

class Injector {
  i::BindingMap bindingMap;

  friend class Bindings;

  Injector():
    bindingMap() {}

  Injector(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

  class CircularDependencyGuard {
    friend class Injector;

    i::BindKeys & keys;
    i::BindKey key;

    CircularDependencyGuard(i::BindKeys & keys, i::BindKey key):
      keys(keys) {
      if (keys.find(key) == keys.end()) {
        keys.insert(key);
      } else {
        throw CircularDependencyException();
      }
    }

    ~CircularDependencyGuard() {
      keys.erase(key);
    }
  };

public:

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get() {
    i::BindKeys keys;
    return get<Iface>(keys);
  }

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get(i::BindKeys & keys) {
    i::BindKey key = i::BindKeyOf<Iface>();
    CircularDependencyGuard guard(keys, key);

    i::BindingMap::iterator i = bindingMap.find(i::BindKeyOf<Iface>());
    if (i == bindingMap.end()) {
      throw UnboundException();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Iface>().get(*this, keys);
  }

};

}

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_