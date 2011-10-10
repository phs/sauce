#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
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

  template<typename Dependency_>
  typename i::DependencyKey<Dependency_>::Ptr get(i::BindKeys & keys) {
    typedef typename i::DependencyKey<Dependency_>::Dependency Dependency;
    i::CircularDependencyGuard<Dependency> guard(keys);

    i::BindingMap::iterator i = bindingMap.find(i::BindKeyOf<Dependency>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Dependency>();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Dependency>().get(*this, keys);
  }

public:

  template<typename Dependency>
  typename i::DependencyKey<Dependency>::Ptr get() {
    i::BindKeys keys;
    return get<Dependency>(keys);
  }

  template<typename Iface, typename Name>
  typename i::DependencyKey<Named<Iface, Name> >::Ptr get() {
    return get<Named<Iface, Name> >();
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_