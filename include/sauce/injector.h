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

/**
 * Wrap dependency requests with Named to choose one of several named alternatives.
 */
template<typename Iface, typename Name>
class Named {};

/**
 * The name of all unnamed dependencies.
 */
class Unnamed {};

namespace internal {

template<typename Iface_>
struct DependencyKey {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Unnamed Name;
};

template<typename Iface_, typename Name_>
struct DependencyKey<Named<Iface_, Name_> > {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Name_ Name;
};

}

class Injector {
  i::BindingMap bindingMap;

  friend class Bindings;
  friend class i::DependencyProvider;

  Injector():
    bindingMap() {}

  Injector(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

  template<typename Dependency>
  typename i::DependencyKey<Dependency>::Ptr get(i::BindKeys & keys) {
    typedef typename i::DependencyKey<Dependency>::Iface Iface;
    typedef typename i::DependencyKey<Dependency>::Name Name;

    i::CircularDependencyGuard<Iface, Name> guard(keys);

    i::BindingMap::iterator i = bindingMap.find(i::BindKeyOf<Iface, Name>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Iface, Name>();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Iface, Name>().get(*this, keys);
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

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_