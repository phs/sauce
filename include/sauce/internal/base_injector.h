#ifndef SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
#define SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>
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
  TypeId id;

  CircularDependencyGuard(TypeIds & ids):
    ids(ids),
    id(typeIdOf<Dependency>()) {
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

template<typename ImplicitBindings>
class BaseInjector {
  typedef sauce::auto_ptr<i::LockFactory> LockFactoryPtr;

  Bindings<ImplicitBindings> const bindings;
  LockFactoryPtr lockFactory;

  friend class ::sauce::Modules;

  BaseInjector(Bindings<ImplicitBindings> const & bindings, LockFactoryPtr lockFactory):
    bindings(bindings),
    lockFactory(lockFactory) {}

public:

  template<typename Dependency>
  void validateAcyclic(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    CircularDependencyGuard<ImplicitBindings, Normalized> guard(ids);
    bindings.validateAcyclic<Normalized>(injector, ids);
  }

  template<typename Dependency>
  typename Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    return bindings.get<Normalized>(injector, ids);
  }

  template<typename Scope>
  void eagerlyProvide(sauce::shared_ptr<Injector> injector) const {
    TypeIds ids;
    bindings.eagerlyProvide<Scope>(injector, ids);
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

#endif // SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
