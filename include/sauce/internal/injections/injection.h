#ifndef SAUCE_INTERNAL_INJECTIONS_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_INJECTION_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/resolved_binding.h>
#include <sauce/internal/injection_binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * A strategy for satisfying provisions for the given interface.
 */
template<typename Dependency_, typename _Scope>
struct Injection:
  public InjectionBinding<Dependency_, _Scope> {

  typedef Dependency_ Dependency;
  typedef _Scope Scope;
  typedef sauce::shared_ptr<Injection<Dependency, Scope> > InjectionPtr;

private:

  typedef typename Key<Dependency>::Ptr IfacePtr;
  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  /**
   * Provide an Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual IfacePtr provide(BindingPtr, InjectorPtr) const = 0;

};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_INJECTION_H_
