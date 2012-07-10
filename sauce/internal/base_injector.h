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
 * Calls Bindings::get on behalf of BaseInjector.
 *
 * It's a separate type to afford template specialization, something a method can't do.
 */
template<typename ImplicitBindings, typename Dependency>
struct GetDecorator {
  typedef typename Key<Dependency>::Ptr Ptr;
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef Bindings<ImplicitBindings> Bindings_;
  typedef sauce::shared_ptr<Injector> InjectorPtr;

  Ptr get(Bindings_ const & bindings, InjectorPtr injector, std::string const name) {
    return bindings.template get<Normalized>(injector, name);
  }
};

/**
 * A specialization that gives provided Providers a self smart ptr.
 *
 * Doing so enables them to safely create smart pointer deleters.
 */
template<typename ImplicitBindings, typename ProvidedDependency, typename Name>
struct GetDecorator<ImplicitBindings, Named<Provider<ProvidedDependency>, Name> > {
  typedef Named<Provider<ProvidedDependency>, Name> Dependency;
  typedef typename Key<Dependency>::Ptr Ptr;
  typedef typename Key<Dependency>::Normalized Normalized;
  typedef Bindings<ImplicitBindings> Bindings_;
  typedef sauce::shared_ptr<Injector> InjectorPtr;

  Ptr get(Bindings_ const & bindings, InjectorPtr injector, std::string const name) {
    Ptr ptr = bindings.template get<Normalized>(injector, name);
    ptr->setSelf(ptr);
    return ptr;
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
  typename Key<Dependency>::Ptr get(
    sauce::shared_ptr<Injector> injector, std::string const name) const {
    typedef typename Key<Dependency>::Normalized Normalized;
    GetDecorator<ImplicitBindings, Normalized> getter;
    return getter.get(bindings, injector, name);
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
