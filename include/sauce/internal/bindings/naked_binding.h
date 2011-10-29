#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/disposal_deleter.h>
#include <sauce/internal/bindings/transparent_binding.h>

namespace sauce {
namespace internal {
namespace bindings {

/**
 * A binding that supplies interfaces by providing and disposing naked pointers.
 */
template<typename Dependency, typename Scope>
class NakedBinding:
  public TransparentBinding<Dependency, Scope> {

  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Binding<Dependency>::BindingPtr BindingPtr;
  typedef NakedBinding<Dependency, Scope> Naked;

  /**
   * Provide a naked Iface pointer.
   *
   * The strategy used is left to derived types.
   */
  virtual Iface * provide(InjectorPtr, TypeIds &) const = 0;

  /**
   * Dispose of an Iface provided by this binding.
   *
   * The strategy used is left to derived types.
   */
  virtual void dispose(Iface *) const = 0;

  /**
   * Create a shared pointer deleter suitable for this binding.
   */
  DisposalDeleter<Iface, Naked> deleter(BindingPtr binding) const {
    sauce::shared_ptr<Naked> concrete = sauce::static_pointer_cast<Naked>(binding);
    return DisposalDeleter<Iface, Naked>(concrete);
  }

  /**
   * Provide an Iface.
   *
   * A naked instance pointer is obtained with provide(InjectorPtr, TypeIds &), and wrapped in a
   * shared_ptr.  It is also given a custom deleter, to dispose of the naked pointer with
   * dispose(Iface *).
   */
  sauce::shared_ptr<Iface> provide(BindingPtr binding, InjectorPtr injector, TypeIds & ids) const {
    sauce::shared_ptr<Iface> provided(provide(injector, ids), deleter(binding));
    return provided;
  }

  friend class DisposalDeleter<Iface, Naked>;
};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
