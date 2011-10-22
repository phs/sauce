#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/scope_cache.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

class InjectorFriend {
protected:

  template<typename Dependency>
  typename i::Key<Dependency>::Ptr getDependency(Injector & injector, TypeIds & keys) const {
    return injector.get<Dependency>(injector, keys);
  }

  template<typename Dependency, typename Scope>
  void cache(Injector & injector, typename i::Key<Dependency>::Ptr pointer) const {
    injector.template cache<Dependency, Scope>(pointer);
  }

  template<typename Dependency, typename Scope>
  bool probe(Injector & injector, typename i::Key<Dependency>::Ptr & out) const {
    return injector.template probe<Dependency, Scope>(out);
  }

};

namespace bindings {

template<typename Dependency, typename Scope, typename Impl>
class TransparentBinding;

/**
 * A smart pointer deleter that diposes with a given binding.
 */
template<typename Dependency, typename Scope, typename Impl>
class DisposalDeleter {
  typedef typename Key<Dependency>::Iface Iface;
  typedef SAUCE_SHARED_PTR<TransparentBinding<Dependency, Scope, Impl> > BindingPtr;

  friend class TransparentBinding<Dependency, Scope, Impl>;

  BindingPtr binding;

  DisposalDeleter(BindingPtr binding):
    binding(binding) {}

public:

  /**
   * Cast and dispose the given Iface instance.
   */
  void operator()(Iface * iface) const {
    binding->dispose(static_cast<Impl *>(iface));
  }
};

/**
 * A binding for a specific interface and implementation.
 */
template<typename Dependency, typename Scope, typename Impl>
class TransparentBinding:
  public Binding<Dependency>,
  public InjectorFriend {

  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Binding<Dependency>::BindingPtr BindingPtr;

  /**
   * Provide an instance of Impl.
   *
   * The strategy used is left to derived types.
   */
  virtual Impl * provide(Injector & injector, TypeIds & typeIds) const = 0;

  /**
   * Dispose of an instance of Iface provided by this binding.
   *
   * The strategy used is left to derived types.
   */
  virtual void dispose(Impl * impl) const = 0;

  /**
   * Create a shared pointer deleter suitable for this binding.
   */
  DisposalDeleter<Dependency, Scope, Impl> deleter(BindingPtr binding) const {
    typedef TransparentBinding<Dependency, Scope, Impl> Transparent;
    SAUCE_SHARED_PTR<Transparent> concrete = SAUCE_STATIC_POINTER_CAST<Transparent>(binding);
    return DisposalDeleter<Dependency, Scope, Impl>(concrete);
  }

public:

  friend class DisposalDeleter<Dependency, Scope, Impl>;

  /**
   * The TypeId of the Dependency template parameter.
   */
  virtual TypeId getDependencyId() const {
    return typeIdOf<Dependency>();
  }

  /**
   * The TypeId of the Scope template parameter.
   */
  virtual TypeId getScopeId() const {
    return typeIdOf<Scope>();
  }

  /**
   * Provide an instance of Iface.
   *
   * Derived classes should not override get(), but rather provide().
   */
  SAUCE_SHARED_PTR<Iface> get(BindingPtr binding, Injector & injector, TypeIds & typeIds) const {
    SAUCE_SHARED_PTR<Iface> smartPointer;

    bool unscoped = typeIdOf<Scope>() == typeIdOf<NoScope>();
    if (unscoped || !probe<Dependency, Scope>(injector, smartPointer)) {
      smartPointer.reset(provide(injector, typeIds), deleter(binding));
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
  void eagerlyProvide(OpaqueBindingPtr opaque, Injector & injector, TypeIds & typeIds) const {
    if (typeIdOf<Scope>() != typeIdOf<NoScope>()) {
      BindingPtr binding = resolve<Dependency>(opaque);
      get(binding, injector, typeIds);
    }
  }

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_
