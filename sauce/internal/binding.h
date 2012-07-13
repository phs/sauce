#ifndef SAUCE_INTERNAL_BINDING_H_
#define SAUCE_INTERNAL_BINDING_H_

#include <string>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/key.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

/**
 * The base class of all actual binding implementations.
 */
template<typename Dependency_, typename Scope>
class Binding: public ResolvedBinding<Dependency_>, public InjectorFriend {
public:

  typedef typename Key<Dependency_>::Normalized Dependency;
  typedef typename Key<Dependency>::Ptr IfacePtr;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

private:

  std::string name;

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
  void get(IfacePtr & provided, BindingPtr binding, InjectorPtr injector) const {
    IfacePtr smartPointer;

    bool unscoped = (getScopeKey() == typeIdOf<NoScope>());
    if (unscoped || !probe<Dependency>(injector, smartPointer, getScopeKey())) {
      smartPointer = provide(binding, injector);
      if (!unscoped) {
        cache<Dependency>(injector, smartPointer, getScopeKey());
      }
    }

    provided = smartPointer;
  }

  /**
   * Establish that further dependencies do not introduce cycles with ones already accumulated.
   *
   * This is Tarjan's algorithm using the call stack.  When a cycle is detected a
   * CircularDependencyException is thrown.
   */
  virtual void validateAcyclic(InjectorPtr, TypeIds &) const = 0;

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
      validateAcyclic(injector, ids);
      IfacePtr provided;
      get(provided, binding, injector);
    }
  }

  /**
   * Accept the list of dynamic dependency names this injection was created with.
   */
  virtual void setDynamicDependencyNames(std::vector<std::string> const &) {}

public:

  Binding():
    name(unnamed()) {}

  /**
   * The dynamic name of this binding.
   */
  std::string getName() const {
    return name;
  }

  /**
   * Set the dynamic name of this binding.
   */
  void setName(std::string const name) {
    this->name = name;
  }

};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_BINDING_H_
