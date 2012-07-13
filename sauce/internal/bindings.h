#ifndef SAUCE_INTERNAL_BINDINGS_H_
#define SAUCE_INTERNAL_BINDINGS_H_

#include <cassert>
#include <map>
#include <utility>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {

class Injector;

namespace internal {

/**
 * Cast an OpaqueBindingPtr to a Binding smart pointer.
 *
 * This must be done carefully (with static_pointer_cast) in order to not lose the ref count.
 */
template<typename Dependency>
sauce::shared_ptr<ResolvedBinding<Dependency> > resolve(OpaqueBindingPtr binding) {
  assert((namedTypeIdOf<Dependency>(binding->getName())) == binding->getKey());
  return sauce::static_pointer_cast<ResolvedBinding<Dependency> >(binding);
}

/**
 * A container for bindings.
 *
 * Each Modules objects creates a Bindings, and passes a const copy to each Injector it creates.
 * The set of bindings an Injector uses is therefore read-only.
 *
 * When providing instances (eagerly and not) the injector is passed in and the dependency is
 * returned directly, instead of giving the binding to the injector (the binding details stay
 * hidden.)
 *
 * The template parameter is a strategy type that attempts to located unknown bindings dynamically
 * (implicitly.)  Due to the threat of circular dependencies (in Sauce's type space), Bindings
 * itself can't be aware of concrete Binding implementations.  The only time it needs to know
 * about them is when resolving implicit bindings.  So, this functionality is hidden behind the
 * templated strategy.
 */
template<typename ImplicitBindings>
class Bindings {
  typedef std::map<NamedTypeId, OpaqueBindingPtr> ProvidingBindingMap;
  typedef std::multimap<TypeId, OpaqueBindingPtr> ScopeMap;
  typedef sauce::shared_ptr<Injector> InjectorPtr;

  ProvidingBindingMap bindingMap;
  ScopeMap scopeMap;

public:

  Bindings():
    bindingMap(),
    scopeMap() {}

  /**
   * Insert the given binding.
   */
  void put(OpaqueBindingPtr binding) {
    bindingMap.insert(std::make_pair(binding->getKey(), binding));
    TypeId scopeKey = binding->getScopeKey();
    scopeMap.insert(std::make_pair(scopeKey, binding));
  }

  template<typename Dependency>
  sauce::shared_ptr<ResolvedBinding<Dependency> > getBinding(std::string const name) const {
    sauce::shared_ptr<ResolvedBinding<Dependency> > binding;

    ProvidingBindingMap::const_iterator i = bindingMap.find(namedTypeIdOf<Dependency>(name));
    if (i == bindingMap.end()) {
      ImplicitBindings implicitBindings;
      binding = implicitBindings.get<Dependency>(*this, name);
    } else {
      binding = resolve<Dependency>(i->second);
    }

    return binding;
  }

  template<typename Dependency>
  void validateAcyclic(InjectorPtr injector, TypeIds & ids, std::string const name) const {
    getBinding<Dependency>(name)->validateAcyclic(injector, ids);
  }

  /**
   * Provide the named Dependency.
   *
   * If no binding is found, the implicit bindings are checked.
   */
  template<typename Dependency>
  void get(typename Key<Dependency>::Ptr & provided, InjectorPtr injector, std::string const name) const {
    sauce::shared_ptr<ResolvedBinding<Dependency> > binding(getBinding<Dependency>(name));
    binding->get(provided, binding, injector);
  }

  template<typename Scope>
  void eagerlyProvide(InjectorPtr injector) const {
    TypeId scopeKey = typeIdOf<Scope>();
    ScopeMap::const_iterator i = scopeMap.lower_bound(scopeKey);
    ScopeMap::const_iterator end = scopeMap.upper_bound(scopeKey);

    for (; i != end; ++i) {
      OpaqueBindingPtr const & binding = i->second;
      binding->eagerlyProvide(binding, injector);
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_BINDINGS_H_
