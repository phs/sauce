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

class Injector;

class UnscopedInjector {
  i::Bindings bindings;
  SAUCE_WEAK_PTR<UnscopedInjector> self;

  friend class Modules;
  friend class Injector;

  UnscopedInjector(i::Bindings & bindings):
    bindings(bindings),
    self() {}

  void setSelf(SAUCE_SHARED_PTR<UnscopedInjector> shared) {
    assert(shared.get() == this);
    self = shared;
  }

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(Injector & injector, i::TypeIds & ids) {
    typedef typename i::Key<Dependency>::Normalized Normalized;
    i::CircularDependencyGuard<Normalized> guard(ids);
    return bindings.get<Normalized>(injector, ids);
  }

  template<typename Scope>
  void eagerlyProvide(Injector & injector) {
    i::TypeIds ids;
    bindings.eagerlyProvide<Scope>(injector, ids);
  }
};

class Injector {
  i::ScopesCache scopeCache;
  SAUCE_SHARED_PTR<Injector> next;
  SAUCE_SHARED_PTR<UnscopedInjector> unscoped;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(SAUCE_SHARED_PTR<Injector> next):
    scopeCache(),
    next(next),
    unscoped() {}

  Injector(SAUCE_SHARED_PTR<UnscopedInjector> unscoped):
    scopeCache(),
    next(),
    unscoped(unscoped) {}

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(i::TypeIds & ids) {
    return unscoped->get<Dependency>(*this, ids);
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
    unscoped->eagerlyProvide<Scope>(*this);
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_