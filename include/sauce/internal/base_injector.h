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

namespace internal {

class BaseInjector;

/**
 * Detects circular dependencies on behalf of injectors.
 */
template<typename Dependency>
class CircularDependencyGuard {
  friend class BaseInjector;

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

class BaseInjector {
  Bindings const bindings;
  sauce::auto_ptr<i::LockFactory> lockFactory;

  friend class ::sauce::Injector;

  BaseInjector(Bindings const & bindings, sauce::auto_ptr<i::LockFactory> lockFactory):
    bindings(bindings),
    lockFactory(lockFactory) {}

  template<typename Dependency>
  typename Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector, TypeIds & ids) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    CircularDependencyGuard<Normalized> guard(ids);
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
