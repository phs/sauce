// -*- C++ -*-
#ifndef SAUCE_SAUCE_INTERNAL_DISPOSAL_H_
#define SAUCE_SAUCE_INTERNAL_DISPOSAL_H_

namespace sauce {
namespace internal {

/**
 * A smart pointer deleter that disposes of its pointer with a given Injector.
 */
template<typename Injector, typename Binding>
class Deleter {
  typedef typename Binding::IfacePointer IfacePointer;
  typedef typename Binding::ImplPointer ImplPointer;

  Injector const & injector;
  ImplPointer impl;

public:
  Deleter(Injector const & injector, ImplPointer impl):
    injector(injector),
    impl(impl) {}

  void operator()(IfacePointer iface) const {
    // Yes, that says impl.  The parameter is unused.
    Binding::dispose(injector, impl);
  }
};

}
}

#endif // SAUCE_SAUCE_INTERNAL_DISPOSAL_H_