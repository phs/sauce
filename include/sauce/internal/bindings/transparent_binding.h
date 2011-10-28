#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

typedef sauce::shared_ptr<Injector> InjectorPtr;

class InjectorFriend {
protected:

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr getDependency(InjectorPtr injector, TypeIds & ids) const {
    return injector->get<Dependency>(injector, ids);
  }

  template<typename Dependency, typename Scope>
  void cache(InjectorPtr injector, typename i::Key<Dependency>::Ptr pointer) const {
    injector->template cache<Dependency, Scope>(pointer);
  }

  template<typename Dependency, typename Scope>
  bool probe(InjectorPtr injector, typename i::Key<Dependency>::Ptr & out) const {
    return injector->template probe<Dependency, Scope>(out);
  }

};

namespace bindings {

/**
 * A binding for a specific interface and implementation.
 */
template<typename Dependency, typename Scope>
class TransparentBinding:
  public Binding<Dependency>,
  public InjectorFriend {

  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Binding<Dependency>::BindingPtr BindingPtr;

  /**
   * Provide an instance of Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual sauce::shared_ptr<Iface> provide(BindingPtr, InjectorPtr, TypeIds &) const = 0;

public:

  /**
   * The TypeId of the Dependency template parameter.
   */
  virtual TypeId getDependencyKey() const {
    return typeIdOf<Dependency>();
  }

  /**
   * The TypeId of the Scope template parameter.
   */
  virtual TypeId getScopeKey() const {
    return typeIdOf<Scope>();
  }

  /**
   * Provide an instance of Iface.
   *
   * Derived classes should not override get(), but rather provide().
   */
  sauce::shared_ptr<Iface> get(BindingPtr binding, InjectorPtr injector, TypeIds & ids) const {
    sauce::shared_ptr<Iface> smartPointer;

    bool unscoped = typeIdOf<Scope>() == typeIdOf<NoScope>();
    if (unscoped || !probe<Dependency, Scope>(injector, smartPointer)) {
      smartPointer = provide(binding, injector, ids);
      if (!unscoped) {
        cache<Dependency, Scope>(injector, smartPointer);
      }
    }

    return smartPointer;
  }

  /**
   * Provide, but do not return an instance of Iface.
   *
   * Instead, cache the instance in its appropriate scope, if any.  If the binding is not scoped,
   * do nothing.
   */
  void eagerlyProvide(OpaqueBindingPtr opaque, InjectorPtr injector, TypeIds & ids) const {
    if (typeIdOf<Scope>() != typeIdOf<NoScope>()) {
      BindingPtr binding = resolve<Dependency>(opaque);
      get(binding, injector, ids);
    }
  }

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_BINDING_H_
