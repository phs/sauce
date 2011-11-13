#ifndef SAUCE_INJECTOR_H_
#define SAUCE_INJECTOR_H_

#include <cassert>

#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/base_injector.h>
#include <sauce/internal/key.h>
#include <sauce/internal/locker_factory.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Modules;

namespace internal {
class ImplicitBindings;
class InjectorFriend;
}

class Injector {
  i::TypeId const scopeKey;
  i::ScopeCache scopeCache;
  sauce::weak_ptr<Injector> weak;
  sauce::shared_ptr<Injector> const next;
  sauce::shared_ptr<i::BaseInjector<i::ImplicitBindings> > const base;

  friend class Modules;
  friend class i::InjectorFriend;

  Injector(i::TypeId scopeKey, sauce::shared_ptr<Injector> next):
    scopeKey(scopeKey),
    scopeCache(),
    weak(),
    next(next),
    base() {}

  Injector(sauce::shared_ptr<i::BaseInjector<i::ImplicitBindings> > const base):
    scopeKey(i::typeIdOf<SingletonScope>()),
    scopeCache(),
    weak(),
    next(),
    base(base) {}

  void setSelf(sauce::shared_ptr<Injector> shared) {
    assert(shared.get() == this);
    weak = shared;
  }

  sauce::shared_ptr<Injector> getSelf() const {
    sauce::shared_ptr<Injector> self = weak.lock();
    assert(self.get() == this);
    return self;
  }

  template<typename Dependency>
  void validateAcyclic(sauce::shared_ptr<Injector> injector, i::TypeIds & ids) {
    if (base.get() == NULL) {
      next->validateAcyclic<Dependency>(injector, ids);
    } else {
      base->validateAcyclic<Dependency>(injector, ids);
    }
  }

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector) {
    if (base.get() == NULL) {
      return next->get<Dependency>(injector);
    } else {
      return base->get<Dependency>(injector);
    }
  }

  /**
   * Create an RAII synchronization lock.
   */
  sauce::auto_ptr<i::Lock> acquireLock() {
    if (base.get() == NULL) {
      return next->acquireLock();
    } else {
      return base->acquireLock();
    }
  }

  template<typename Scope>
  void eagerlyProvide(sauce::shared_ptr<Injector> injector) {
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
  bool probe(typename i::Key<Dependency>::Ptr & out) const {
    if (scopeKey == i::typeIdOf<Scope>()) {
      return scopeCache.template get<Dependency>(out);
    } else if (next.get() == NULL) {
      throw OutOfScopeExceptionFor<Scope>();
    } else {
      return next->probe<Dependency, Scope>(out);
    }
  }

  template<typename Scope>
  bool alreadyInScope() const {
    if (scopeKey == i::typeIdOf<Scope>()) {
      return true;
    } else if (next.get() == NULL) {
      return false;
    } else {
      return next->alreadyInScope<Scope>();
    }
  }

public:

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr get() {
    typedef typename i::Key<Dependency>::Normalized Normalized;
    sauce::auto_ptr<i::Lock> lock = acquireLock();
    i::TypeIds ids;
    validateAcyclic<Normalized>(getSelf(), ids);
    return get<Normalized>(getSelf());
  }

  template<typename Iface, typename Name>
  typename i::Key<Named<Iface, Name> >::Ptr get() {
    return get<Named<Iface, Name> >();
  }

  template<typename Scope>
  sauce::shared_ptr<Injector> enter() const {
    if (alreadyInScope<Scope>()) {
      throw AlreadyInScopeExceptionFor<Scope>();
    }

    sauce::shared_ptr<Injector> scoped(new Injector(i::typeIdOf<Scope>(), getSelf()));
    scoped->setSelf(scoped);
    return scoped;
  }

  sauce::shared_ptr<Injector> exit() const {
    if (next.get() == NULL) {
      throw ExitingSingletonScopeException();
    } else {
      return next;
    }
  }

  template<typename Scope>
  void eagerlyProvide() {
    sauce::auto_ptr<i::Lock> lock = acquireLock();
    eagerlyProvide<Scope>(getSelf());
  }

};

namespace internal {

typedef sauce::shared_ptr<Injector> InjectorPtr;

class InjectorFriend {
protected:

  template<typename Dependency>
  void validateAcyclicHelper(InjectorPtr injector, TypeIds & ids) const {
    injector->validateAcyclic<Dependency>(injector, ids);
  }

  template<typename Dependency>
  typename Key<Dependency>::Ptr getHelper(InjectorPtr injector) const {
    return injector->get<Dependency>(injector);
  }

  template<typename Dependency, typename Scope>
  void cache(InjectorPtr injector, typename Key<Dependency>::Ptr pointer) const {
    injector->template cache<Dependency, Scope>(pointer);
  }

  template<typename Dependency, typename Scope>
  bool probe(InjectorPtr injector, typename Key<Dependency>::Ptr & out) const {
    return injector->template probe<Dependency, Scope>(out);
  }

};

}

}

#endif // SAUCE_INJECTOR_H_
