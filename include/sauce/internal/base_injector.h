#ifndef SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
#define SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/provider.h>
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

/**
 * A friend of the Provider base type.
 *
 * Enables GetDecorators to give a Provider its own smart pointer.
 */
struct ProviderFriend {
  template<typename ProvidedDependency, typename Name>
  void setSelf(typename Key<Named<Provider<ProvidedDependency>, Name> >::Ptr ptr) {
    ptr->setSelf(ptr);
  }
};

/**
 * Calls Bindings::get on behalf of BaseInjector.
 *
 * It's a separate type to afford template specialization, something a method can't do.
 */
template<typename ImplicitBindings, typename Dependency>
struct GetDecorator: ProviderFriend {
  typedef typename Key<Dependency>::Ptr Ptr;
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef sauce::shared_ptr<Injector> InjectorPtr;

  static Ptr get(Bindings<ImplicitBindings> const & bindings, InjectorPtr injector) {
    return bindings.template get<Normalized>(injector);
  }
};

/**
 * A specialization that gives provided Providers a self smart ptr.
 *
 * Doing so enables them to safely create smart pointer deleters.
 */
template<typename ImplicitBindings, typename ProvidedDependency, typename Name>
struct GetDecorator<ImplicitBindings, Named<Provider<ProvidedDependency>, Name> >: ProviderFriend {
  typedef Named<Provider<ProvidedDependency>, Name> Dependency;
  typedef typename Key<Dependency>::Ptr Ptr;
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef sauce::shared_ptr<Injector> InjectorPtr;

  static Ptr get(Bindings<ImplicitBindings> const & bindings, InjectorPtr injector) {
    Ptr ptr = bindings.template get<Normalized>(injector);
    setSelf(ptr);
    return ptr;
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
  typename Key<Dependency>::Ptr get(sauce::shared_ptr<Injector> injector) const {
    return GetDecorator<ImplicitBindings, Dependency>::get(bindings, injector);
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

#endif // SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
