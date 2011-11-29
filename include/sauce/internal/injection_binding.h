#ifndef SAUCE_INTERNAL_INJECTION_BINDING_H_
#define SAUCE_INTERNAL_INJECTION_BINDING_H_

#include <sauce/internal/resolved_binding.h>

namespace sauce {
namespace internal {

/**
 * A binding that uses an Injection to satisfy dependencies.
 */
template<typename Dependency, typename Scope>
class InjectionBinding: public ResolvedBinding<Dependency> {

  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  /**
   * The TypeId of the Scope template parameter.
   */
  TypeId getScopeKey() const {
    return typeIdOf<Scope>();
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

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_INJECTION_BINDING_H_
