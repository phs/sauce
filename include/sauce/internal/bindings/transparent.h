#ifndef SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_
#define SAUCE_SAUCE_INTERNAL_BINDINGS_TRANSPARENT_H_

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/internal/binding.h>

namespace sauce {
namespace internal {

class DependencyProvider {
protected:

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> getDependency(Injector & injector, BindKeys & keys) {
    return injector.get<Iface>(keys);
  }

};

namespace bindings {

template<typename Iface, typename Name, typename Impl>
class TransparentBinding;

/**
 * A smart pointer deleter that diposes with a given binding.
 */
template<typename Iface, typename Name, typename Impl>
class BindingDeleter {

  friend class TransparentBinding<Iface, Name, Impl>;

  TransparentBinding<Iface, Name, Impl> * binding;

  BindingDeleter(TransparentBinding<Iface, Name, Impl> * binding):
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
template<typename Iface, typename Name, typename Impl>
struct TransparentBinding:
  public ResolvedBinding<Iface, Name>,
  public DependencyProvider {

  friend class BindingDeleter<Iface, Name, Impl>;

  /**
   * The BindKey of the Iface and Name template parameters.
   */
  virtual BindKey getKey() {
    return BindKeyOf<Iface, Name>();
  }

  /**
   * Provide an instance of Iface.
   *
   * Derived classes should not override this but provide().
   */
  SAUCE_SHARED_PTR<Iface> get(Injector & injector, BindKeys & bindKeys) {
    BindingDeleter<Iface, Name, Impl> deleter(this);
    SAUCE_SHARED_PTR<Iface> smartPointer(provide(injector, bindKeys), deleter);
    return smartPointer;
  }

private:

  /**
   * Provide an instance of Impl.
   *
   * The strategy used is left to derived types.
   */
  virtual Impl * provide(Injector & injector, BindKeys & bindKeys) = 0;

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