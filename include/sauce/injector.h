#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Bindings;

namespace internal {
class InjectorFriend;
}

class Injector {
  i::BindingMap bindingMap;
  i::ScopeCache scopeCache;

  friend class Bindings;
  friend class i::InjectorFriend;

  Injector():
    bindingMap(),
    scopeCache() {}

  Injector(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

  template<typename Dependency_>
  typename i::DependencyKey<Dependency_>::Ptr get(i::TypeIds & ids) {
    typedef typename i::DependencyKey<Dependency_>::Dependency Dependency;
    i::CircularDependencyGuard<Dependency> guard(ids);

    i::BindingMap::iterator i = bindingMap.find(i::TypeIdOf<Dependency>());
    if (i == bindingMap.end()) {
      throw UnboundExceptionFor<Dependency>();
    }

    i::Binding & binding = *(i->second.get());
    return binding.resolve<Dependency>().get(*this, ids);
  }

public:

  template<typename Dependency>
  typename i::DependencyKey<Dependency>::Ptr get() {
    i::TypeIds ids;
    return get<Dependency>(ids);
  }

  template<typename Iface, typename Name>
  typename i::DependencyKey<Named<Iface, Name> >::Ptr get() {
    return get<Named<Iface, Name> >();
  }

  template<typename Scope>
  void exitScope() {
    scopeCache.clear<Scope>();
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_