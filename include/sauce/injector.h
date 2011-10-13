#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Modules;

namespace internal {
class InjectorFriend;
}

class Injector {
  i::Bindings bindings;
  i::ScopeCache scopeCache;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(i::Bindings & bindings):
    bindings(bindings),
    scopeCache() {}

  template<typename Dependency_>
  typename i::Key<Dependency_>::Ptr get(i::TypeIds & ids) {
    typedef typename i::Key<Dependency_>::Normalized Dependency;
    i::CircularDependencyGuard<Dependency> guard(ids);
    i::Binding<Dependency> & binding = bindings.get<Dependency>();
    return binding.get(*this, ids);
  }

public:

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get() {
    i::TypeIds ids;
    return get<Dependency>(ids);
  }

  template<typename Iface, typename Name>
  typename i::Key<Named<Iface, Name> >::Ptr get() {
    return get<Named<Iface, Name> >();
  }

  template<typename Scope>
  void reenter() {
    scopeCache.clear<Scope>();
  }

  template<typename Scope>
  void eagerlyProvide() {
    i::TypeIds ids;
    bindings.eagerlyProvide<Scope>(*this, ids);
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_