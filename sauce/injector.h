#ifndef SAUCE_INJECTOR_H_
#define SAUCE_INJECTOR_H_

#include <cassert>
#include <string>

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

  void setSelfPtr(sauce::shared_ptr<Injector> shared) {
    assert(shared.get() == this);
    weak = shared;
  }

  sauce::shared_ptr<Injector> getSelf() const {
    sauce::shared_ptr<Injector> self = weak.lock();
    assert(self.get() == this);
    return self;
  }

  template<typename Dependency>
  void validateAcyclic(sauce::shared_ptr<Injector> injector, i::TypeIds & ids, std::string const name) {
    if (base.get() == NULL) {
      next->validateAcyclic<Dependency>(injector, ids, name);
    } else {
      base->validateAcyclic<Dependency>(injector, ids, name);
    }
  }

  template<typename Dependency>
  void get(typename i::Key<Dependency>::Ptr & provided, sauce::shared_ptr<Injector> injector, std::string const name) {
    if (base.get() == NULL) {
      next->get<Dependency>(provided, injector, name);
    } else {
      base->get<Dependency>(provided, injector, name);
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
  void eagerlyInject(sauce::shared_ptr<Injector> injector) {
    if (base.get() == NULL) {
      next->eagerlyInject<Scope>(injector);
    } else {
      base->eagerlyInject<Scope>(injector);
    }
  }

  template<typename Dependency>
  void cache(typename i::Key<Dependency>::Ptr pointer, i::TypeId dependencyScopeKey) {
    if (scopeKey == dependencyScopeKey) {
      scopeCache.template put<Dependency>(pointer);
    } else if (next.get() == NULL) {
      dependencyScopeKey.throwOutOfScopeException();
    } else {
      next->cache<Dependency>(pointer, dependencyScopeKey);
    }
  }

  template<typename Dependency>
  bool probe(typename i::Key<Dependency>::Ptr & out, i::TypeId dependencyScopeKey) const {
    if (scopeKey == dependencyScopeKey) {
      return scopeCache.template get<Dependency>(out);
    } else if (next.get() == NULL) {
      dependencyScopeKey.throwOutOfScopeException();
      return false; // never reached
    } else {
      return next->probe<Dependency>(out, dependencyScopeKey);
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
  typename i::Key<Dependency>::Ptr get(std::string const name = unnamed()) {
    typedef typename i::Key<Dependency>::Ptr Ptr;
    typedef typename i::Key<Dependency>::Normalized Normalized;

    sauce::auto_ptr<i::Lock> lock = acquireLock();

    i::TypeIds ids;
    validateAcyclic<Normalized>(getSelf(), ids, name); // TODO Make this check optional.

    Ptr provided;
    get<Normalized>(provided, getSelf(), name);
    return provided;
  }

  template<typename Iface, typename Name>
  typename i::Key<Named<Iface, Name> >::Ptr get(std::string const name = unnamed()) {
    return get<Named<Iface, Name> >(name);
  }

  template<typename Scope>
  sauce::shared_ptr<Injector> enter() const {
    if (alreadyInScope<Scope>()) {
      throw AlreadyInScopeExceptionFor<Scope>();
    }

    sauce::shared_ptr<Injector> scoped(new Injector(i::typeIdOf<Scope>(), getSelf()));
    scoped->setSelfPtr(scoped);
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
  void eagerlyInject() {
    sauce::auto_ptr<i::Lock> lock = acquireLock();
    eagerlyInject<Scope>(getSelf());
  }

};

namespace internal {

typedef sauce::shared_ptr<Injector> InjectorPtr;

class InjectorFriend {
protected:

  template<typename Dependency>
  void validateAcyclicHelper(InjectorPtr injector, TypeIds & ids, std::string const name) const {
    injector->validateAcyclic<Dependency>(injector, ids, name);
  }

  template<typename Dependency>
  typename Key<Dependency>::Ptr getHelper(InjectorPtr injector, std::string const name) const {
    typename Key<Dependency>::Ptr provided;
    injector->get<Dependency>(provided, injector, name);
    return provided;
  }

  template<typename Dependency>
  void cache(InjectorPtr injector, typename Key<Dependency>::Ptr provided, i::TypeId scope) const {
    injector->template cache<Dependency>(provided, scope);
  }

  template<typename Dependency>
  bool probe(InjectorPtr injector, typename Key<Dependency>::Ptr & provided, i::TypeId scope) const {
    return injector->template probe<Dependency>(provided, scope);
  }

};

}

}

#endif // SAUCE_INJECTOR_H_
