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
  typename i::Key<Dependency>::Ptr getDependency(Injector & injector, TypeIds & keys) {
    return injector.get<Dependency>(keys);
  }

  template<typename Dependency, typename Scope>
  void putInScopeCache(Injector & injector, typename i::Key<Dependency>::Ptr pointer) {
    injector.scopeCache.template put<Dependency, Scope>(pointer);
  }

  template<typename Dependency, typename Scope>
  bool getFromScopeCache(Injector & injector, typename i::Key<Dependency>::Ptr & out) {
    return injector.scopeCache.template get<Dependency, Scope>(out);
  }

};

namespace bindings {

template<typename Dependency, typename Scope, typename Impl>
class TransparentBinding;

/**
 * A smart pointer deleter that diposes with a given binding.
 */
template<typename Dependency, typename Scope, typename Impl>
class BindingDeleter {

  typedef typename Key<Dependency>::Iface Iface;

  friend class TransparentBinding<Dependency, Scope, Impl>;

  TransparentBinding<Dependency, Scope, Impl> * binding;

  BindingDeleter(TransparentBinding<Dependency, Scope, Impl> * binding):
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
struct TransparentBinding:
  public ResolvedBinding<Dependency>,
  public InjectorFriend {

private:

  typedef typename Key<Dependency>::Iface Iface;

public:

  friend class BindingDeleter<Dependency, Scope, Impl>;

  /**
   * The TypeId of the Dependency template parameter.
   */
  virtual TypeId getDependencyId() {
    return typeIdOf<Dependency>();
  }

  /**
   * The TypeId of the Scope template parameter.
   */
  virtual TypeId getScopeId() {
    return typeIdOf<Scope>();
  }

  /**
   * Provide an instance of Iface.
   *
   * Derived classes should not override this but provide().
   */
  SAUCE_SHARED_PTR<Iface> get(Injector & injector, TypeIds & typeIds) {
    SAUCE_SHARED_PTR<Iface> smartPointer;

    bool unscoped = typeIdOf<Scope>() == typeIdOf<NoScope>();
    if (unscoped || !getFromScopeCache<Dependency, Scope>(injector, smartPointer)) {
      BindingDeleter<Dependency, Scope, Impl> deleter(this);
      smartPointer.reset(provide(injector, typeIds), deleter);
      if (!unscoped) {
        putInScopeCache<Dependency, Scope>(injector, smartPointer);
      }
    }

    return smartPointer;
  }

  void eagerlyProvide(Injector & injector, TypeIds & typeIds) {
    if (typeIdOf<Scope>() == typeIdOf<NoScope>()) {
      return;
    }

    SAUCE_SHARED_PTR<Iface> smartPointer;
    if (!getFromScopeCache<Dependency, Scope>(injector, smartPointer)) {
      BindingDeleter<Dependency, Scope, Impl> deleter(this);
      smartPointer.reset(provide(injector, typeIds), deleter);
      putInScopeCache<Dependency, Scope>(injector, smartPointer);
    }
  }

private:

  /**
   * Provide an instance of Impl.
   *
   * The strategy used is left to derived types.
   */
  virtual Impl * provide(Injector & injector, TypeIds & typeIds) = 0;

  /**
   * Dispose of an instance of Iface provided by this binding.
   *
   * The strategy used is left to derived types.
   */
  virtual void dispose(Impl * impl) = 0;

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_