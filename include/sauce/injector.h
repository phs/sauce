// -*- C++ -*-
#ifndef SAUCE_SAUCE_INJECTOR_H_
#define SAUCE_SAUCE_INJECTOR_H_

#include <sauce/memory.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/deleter.h>

namespace sauce {

template<typename Module_>
class Injector {
  typedef Module_ Module;
  typedef Injector<Module> Injector_;

public:

  Injector() {}
  virtual ~Injector() {}

  template<typename Iface>
  SAUCE_SHARED_PTR<Iface> get() const {
    return resolveAndProvide<Iface>(&Module::template bindings<Injector_> );
  }

private:

  template<typename Iface, typename Binding>
  SAUCE_SHARED_PTR<Iface> resolveAndProvide(Binding * (*)(Iface)) const {
    typedef typename Binding::ImplPointer ImplPointer;
    typedef ::sauce::internal::Deleter<Injector_, Binding> Deleter;

    ImplPointer impl = Binding::provide(*this);

    SAUCE_SHARED_PTR<Iface> smartPointer(impl, Deleter(*this, impl)); // Do not inline
    return smartPointer;
  }
};

}

#endif // ifndef SAUCE_SAUCE_INJECTOR_H_