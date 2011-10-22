#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <cassert>

#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>
#include <sauce/internal/base_injector.h>

namespace sauce {

class Modules;

namespace internal {
class InjectorFriend;
}

class Injector {
  i::TypeId scopeKey;
  i::ScopeCache scopeCache;
  SAUCE_WEAK_PTR<Injector> weak;
  SAUCE_SHARED_PTR<Injector> next;
  SAUCE_SHARED_PTR<i::BaseInjector> base;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(i::TypeId scopeKey, SAUCE_SHARED_PTR<Injector> next):
    scopeKey(scopeKey),
    scopeCache(),
    weak(),
    next(next),
    base() {}

  Injector(i::Bindings & bindings):
    scopeKey(i::typeIdOf<SingletonScope>()),
    scopeCache(),
    weak(),
    next(),
    base(new i::BaseInjector(bindings)) {}

  void setSelf(SAUCE_SHARED_PTR<Injector> shared) {
    assert(shared.get() == this);
    weak = shared;
  }

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(Injector & injector, i::TypeIds & ids) {
    if (base.get() == NULL) {
      return next->get<Dependency>(injector, ids);
    } else {
      return base->get<Dependency>(injector, ids);
    }
  }

  template<typename Scope>
  void eagerlyProvide(Injector & injector) {
    if (base.get() == NULL) {
      next->eagerlyProvide<Scope>(injector);
    } else {
      base->eagerlyProvide<Scope>(injector);
    }
  }

  template<typename Dependency, typename Scope>
  void cache(typename i::Key<Dependency>::Ptr pointer) {
    if (scopeKey == i::typeIdOf<Scope>()) {
      scopeCache.template put<Dependency>(pointer);
    } else if (next.get() == NULL) {
      throw OutOfScopeExceptionFor<Scope>();
    } else {
      next->cache<Dependency, Scope>(pointer);
    }
  }

  template<typename Dependency, typename Scope>
  bool probe(typename i::Key<Dependency>::Ptr & out) {
    if (scopeKey == i::typeIdOf<Scope>()) {
      return scopeCache.template get<Dependency>(out);
    } else if (next.get() == NULL) {
      throw OutOfScopeExceptionFor<Scope>();
    } else {
      return next->probe<Dependency, Scope>(out);
    }
  }

  template<typename Scope>
  bool alreadyScoped() {
    if (scopeKey == i::typeIdOf<Scope>()) {
      return true;
    } else if (next.get() == NULL) {
      return false;
    } else {
      return next->alreadyScoped<Scope>();
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
    if (alreadyScoped<Scope>()) {
      throw AlreadyInScopeExceptionFor<Scope>();
    }

    SAUCE_SHARED_PTR<Injector> self = weak.lock();
    assert(self.get() == this);

    SAUCE_SHARED_PTR<Injector> scoped(new Injector(i::typeIdOf<Scope>(), self));
    scoped->setSelf(scoped);
    return scoped;
  }

  template<typename Scope>
  void eagerlyProvide() {
    eagerlyProvide<Scope>(*this);
  }

};

}

#endif // SAUCE_SAUCE_INJECTOR_H_
