#ifndef SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
#define SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_

#include <sauce/exceptions.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
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

  friend class ::sauce::Injector;

  BaseInjector(Bindings & bindings):
    bindings(bindings) {}

  template<typename Dependency>
  typename Key<Dependency>::Ptr get(Injector & injector, TypeIds & ids) {
    typedef typename Key<Dependency>::Normalized Normalized;
    CircularDependencyGuard<Normalized> guard(ids);
    return bindings.get<Normalized>(injector, ids);
  }

  template<typename Scope>
  void eagerlyProvide(Injector & injector) {
    TypeIds ids;
    bindings.eagerlyProvide<Scope>(injector, ids);
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_BASE_INJECTOR_H_
