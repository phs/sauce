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

// TODO push down into internal
class UnscopedInjector {
  i::Bindings bindings;

  friend class Injector;

  UnscopedInjector(i::Bindings & bindings):
    bindings(bindings) {}

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
  i::ScopesCache scopeCache; // TODO ScopesCache must die! Long live ScopeCache..
  SAUCE_WEAK_PTR<Injector> weak;
  SAUCE_SHARED_PTR<Injector> next;
  SAUCE_SHARED_PTR<UnscopedInjector> unscoped;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(SAUCE_SHARED_PTR<Injector> next):
    scopeCache(),
    weak(),
    next(next),
    unscoped() {}

  Injector(i::Bindings & bindings):
    scopeCache(),
    weak(),
    next(),
    unscoped(new UnscopedInjector(bindings)) {}

  void setSelf(SAUCE_SHARED_PTR<Injector> shared) {
    assert(shared.get() == this);
    weak = shared;
  }

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(Injector & injector, i::TypeIds & ids) {
    if (unscoped.get() == NULL) {
      return next->get<Dependency>(injector, ids);
    } else {
      return unscoped->get<Dependency>(injector, ids);
    }
  }

public:

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get() {
    i::TypeIds ids;
    return get<Dependency>(*this, ids);
  }

  template<typename Iface, typename Name>
  typename i::Key<Named<Iface, Name> >::Ptr get() {
    return get<Named<Iface, Name> >();
  }

  template<typename Scope>
  SAUCE_SHARED_PTR<Injector> enter() {
    SAUCE_SHARED_PTR<Injector> self = weak.lock();
    assert(self.get() == this);

    SAUCE_SHARED_PTR<Injector> scoped(new Injector(self));
    scoped->setSelf(scoped);
    return scoped;
  }

  template<typename Scope>
  void eagerlyProvide() {
    // TODO recursion
    unscoped->eagerlyProvide<Scope>(*this);
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_
