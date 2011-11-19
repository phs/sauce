#ifndef SAUCE_INTERNAL_INJECTIONS_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_INJECTION_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * A strategy for satisfying provisions for the given interface.
 */
template<typename Dependency, typename Scope>
class Injection:
  public ResolvedBinding<Dependency>,
  public InjectorFriend {

  typedef typename Key<Dependency>::Iface Iface;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  /**
   * Provide an Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual sauce::shared_ptr<Iface> provide(BindingPtr, InjectorPtr) const = 0;

  /**
   * The TypeId of the Scope template parameter.
   */
  virtual TypeId getScopeKey() const = 0;

public:

  /**
   * Provide an Iface.
   *
   * If a Scope is configured for the injection, this checks the scope cache first before calling
   * provide(), and caches the new Iface on miss.
   *
   * Derived classes should not override get(), but rather provide().
   */
  sauce::shared_ptr<Iface> get(BindingPtr binding, InjectorPtr injector) const {
    sauce::shared_ptr<Iface> smartPointer;

    bool unscoped = getScopeKey() == typeIdOf<NoScope>();
    if (unscoped || !probe<Dependency>(injector, smartPointer, getScopeKey())) {
      smartPointer = provide(binding, injector);
      if (!unscoped) {
        cache<Dependency>(injector, smartPointer, getScopeKey());
      }
    }

    return smartPointer;
  }

  /**
   * Provide, but do not return an Iface.
   *
   * Instead, cache the instance in its appropriate scope, if any.  If the injection is not scoped,
   * do nothing.
   */
  void eagerlyProvide(OpaqueBindingPtr opaque, InjectorPtr injector) const {
    if (getScopeKey() != typeIdOf<NoScope>()) {
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
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_INJECTION_H_
