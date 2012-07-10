#ifndef SAUCE_INTERNAL_BASE_INJECTOR_H_
#define SAUCE_INTERNAL_BASE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/provider.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/key.h>
#include <sauce/internal/locker_factory.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Injector;
class Modules;

namespace internal {

template<typename ImplicitBindings>
class BaseInjector;

/**
 * Detects circular dependencies on behalf of injectors.
 */
template<typename ImplicitBindings, typename Dependency>
class CircularDependencyGuard {
  friend class BaseInjector<ImplicitBindings>;

  TypeIds & ids;
  NamedTypeId id;

  CircularDependencyGuard(TypeIds & ids, std::string const name):
    ids(ids),
    id(namedTypeIdOf<Dependency>(name)) {
    TypeIds::iterator i = ids.find(id);
    if (i == ids.end()) {
      ids.insert(i, id);
    } else {
      throw CircularDependencyExceptionFor<Dependency>();
    }
  }

  ~CircularDependencyGuard() {
    ids.erase(id);
  }
};

/**
 * If Dependency requests injection of its own pointer, do so.
 *
 * An interface Iface requests this by exposing void setSelf(sauce::weak_ptr<Iface>), detected by SFINAE.
 */
template<typename Dependency>
class SelfInjector {
  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Key<Dependency>::Ptr Ptr;
  typedef void (Iface::* SetterMethod)(sauce::weak_ptr<Iface>);

  template<typename T, T>
  struct EqualTypes;

  template<typename DoesNotRequestSelf>
  void setSelfIfRequested(Ptr, ...) {}

  template<typename RequestsSelf>
  void setSelfIfRequested(Ptr ptr, EqualTypes<SetterMethod, & RequestsSelf::setSelf> *) {
    sauce::weak_ptr<Iface> weak(ptr);
    ptr->setSelf(weak);
  }

public:

  void setSelf(Ptr ptr) {
    setSelfIfRequested<Iface>(ptr, 0);
  }
};

template<typename ImplicitBindings>
class BaseInjector {
  typedef sauce::auto_ptr<LockFactory> LockFactoryPtr;

  Bindings<ImplicitBindings> const bindings;
  LockFactoryPtr lockFactory;

  friend class ::sauce::Modules;

  BaseInjector(Bindings<ImplicitBindings> const & bindings, LockFactoryPtr lockFactory):
    bindings(bindings),
    lockFactory(lockFactory) {}

public:

  template<typename Dependency>
  void validateAcyclic(
    sauce::shared_ptr<Injector> injector, TypeIds & ids, std::string const name) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    CircularDependencyGuard<ImplicitBindings, Normalized> guard(ids, name);
    bindings.validateAcyclic<Normalized>(injector, ids, name);
  }

  template<typename Dependency>
  typename Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector, std::string const name) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    typedef typename Key<Dependency>::Ptr Ptr;
    Ptr ptr(bindings.template get<Normalized>(injector, name));
    SelfInjector<Normalized> selfInjector;
    selfInjector.setSelf(ptr);
    return ptr;
  }

  template<typename Scope>
  void eagerlyProvide(sauce::shared_ptr<Injector> injector) const {
    bindings.eagerlyProvide<Scope>(injector);
  }

  /**
   * Create an RAII synchronization lock.
   */
  sauce::auto_ptr<Lock> acquireLock() {
    sauce::auto_ptr<Lock> lock = lockFactory->createLock();
    return lock;
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_BASE_INJECTOR_H_
