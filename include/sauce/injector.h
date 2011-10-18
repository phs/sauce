#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <cassert>

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
  SAUCE_WEAK_PTR<Injector> self;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(i::Bindings & bindings):
    bindings(bindings),
    scopeCache(),
    self() {}

  void setSelf(SAUCE_SHARED_PTR<Injector> shared) {
    assert(shared.get() == this);
    self = shared;
  }

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(i::TypeIds & ids) {
    typedef typename i::Key<Dependency>::Normalized Normalized;
    i::CircularDependencyGuard<Normalized> guard(ids);
    return bindings.get<Normalized>(*this, ids);
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