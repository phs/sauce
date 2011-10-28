#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/bindings/transparent_binding.h>

namespace sauce {
namespace internal {
namespace bindings {

template<typename Dependency, typename Scope>
class NakedBinding;

/**
 * A smart pointer deleter that diposes with a given binding.
 */
template<typename Dependency, typename Scope>
class DisposalDeleter {
  typedef typename Key<Dependency>::Iface Iface;
  typedef sauce::shared_ptr<NakedBinding<Dependency, Scope> > BindingPtr;

  friend class NakedBinding<Dependency, Scope>;

  BindingPtr binding;

  DisposalDeleter(BindingPtr binding):
    binding(binding) {}

public:

  /**
   * Cast and dispose the given Iface instance.
   */
  void operator()(Iface * iface) const {
    binding->dispose(iface);
  }
};

/**
 * A binding that supplies interfaces by providing and disposing naked pointers.
 */
template<typename Dependency, typename Scope>
class NakedBinding:
  public TransparentBinding<Dependency, Scope> {

  typedef typename Key<Dependency>::Iface Iface;
  typedef typename Binding<Dependency>::BindingPtr BindingPtr;

  /**
   * Provide a naked Iface pointer.
   *
   * The strategy used is left to derived types.
   */
  virtual Iface * provide(InjectorPtr, TypeIds &) const = 0;

  /**
   * Dispose of an instance of Iface provided by this binding.
   *
   * The strategy used is left to derived types.
   */
  virtual void dispose(Iface *) const = 0;

  /**
   * Create a shared pointer deleter suitable for this binding.
   */
  DisposalDeleter<Dependency, Scope> deleter(BindingPtr binding) const {
    typedef NakedBinding<Dependency, Scope> Naked;
    sauce::shared_ptr<Naked> concrete = sauce::static_pointer_cast<Naked>(binding);
    return DisposalDeleter<Dependency, Scope>(concrete);
  }

  /**
   * Provide an instance of Iface.
   *
   * A naked instance pointer is obtained with provide(InjectorPtr, TypeIds &), and wrapped in a
   * shared_ptr.  It is also given a custom deleter, to dispose of the naked pointer with
   * dispose(Iface *).
   */
  sauce::shared_ptr<Iface> provide(BindingPtr binding, InjectorPtr injector, TypeIds & ids) const {
    sauce::shared_ptr<Iface> provided(provide(injector, ids), deleter(binding));
    return provided;
  }

  friend class DisposalDeleter<Dependency, Scope>;

};

}
}

namespace i = ::sauce::internal;
namespace b = ::sauce::internal::bindings;

}

#endif // SAUCE_SAUCE_INTERNAL_BINDINGS_NAKED_BINDING_H_
