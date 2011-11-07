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
  void validateAcyclicos(InjectorPtr injector, TypeIds & ids) const {
    injector->validateAcyclic<Dependency>(injector, ids);
  }

  template<typename Dependency>
  typename Key<Dependency>::Ptr getDependency(InjectorPtr injector) const {
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
   * Provide an Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual sauce::shared_ptr<Iface> provide(BindingPtr, InjectorPtr) const = 0;

public:

  /**
   * The TypeId of the Scope template parameter.
   */
  virtual TypeId getScopeKey() const {
    return typeIdOf<Scope>();
  }

  /**
   * Provide an Iface.
   *
   * If a Scope is configured for the binding, this checks the scope cache first before calling
   * provide(), and caches the new Iface on miss.
   *
   * Derived classes should not override get(), but rather provide().
   */
  sauce::shared_ptr<Iface> get(BindingPtr binding, InjectorPtr injector) const {
    sauce::shared_ptr<Iface> smartPointer;

    bool unscoped = typeIdOf<Scope>() == typeIdOf<NoScope>();
    if (unscoped || !probe<Dependency, Scope>(injector, smartPointer)) {
      smartPointer = provide(binding, injector);
      if (!unscoped) {
        cache<Dependency, Scope>(injector, smartPointer);
      }
    }

    return smartPointer;
  }

  /**
   * Provide, but do not return an Iface.
   *
   * Instead, cache the instance in its appropriate scope, if any.  If the binding is not scoped,
   * do nothing.
   */
  void eagerlyProvide(OpaqueBindingPtr opaque, InjectorPtr injector) const {
    if (typeIdOf<Scope>() != typeIdOf<NoScope>()) {
      BindingPtr binding = resolve<Dependency>(opaque);
      TypeIds ids;
      this->validateAcyclic(injector, ids);
      get(binding, injector);
    }
  }

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_BINDING_H_
