#ifndef SAUCE_INTERNAL_INJECTION_BINDING_H_
#define SAUCE_INTERNAL_INJECTION_BINDING_H_

#include <sauce/injector.h>
#include <sauce/internal/resolved_binding.h>

namespace sauce {
namespace internal {

/**
 * A binding that uses an Injection to satisfy dependencies.
 */
template<typename Dependency, typename Scope>
class InjectionBinding:
  public ResolvedBinding<Dependency>,
  public InjectorFriend {

  typedef typename Key<Dependency>::Ptr IfacePtr;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  /**
   * The TypeId of the Scope template parameter.
   */
  TypeId getScopeKey() const {
    return typeIdOf<Scope>();
  }

  /**
   * Provide an Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual IfacePtr provide(BindingPtr, InjectorPtr) const = 0;

  /**
   * Provide an Iface.
   *
   * If a Scope is configured for the injection, this checks the scope cache first before calling
   * provide(), and caches the new Iface on miss.
   *
   * Derived classes should not override get(), but rather provide().
   */
  IfacePtr get(BindingPtr binding, InjectorPtr injector) const {
    IfacePtr smartPointer;

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
   * Establish that further dependencies do not introduce cycles with ones already accumulated.
   *
   * This is Tarjan's algorithm using the call stack.  When a cycle is detected a
   * CircularDependencyException is thrown.
   */
  virtual void validateAcyclic(sauce::shared_ptr<Injector>, TypeIds &) const {}

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

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_INJECTION_BINDING_H_
