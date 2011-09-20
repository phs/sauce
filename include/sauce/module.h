#ifndef SAUCE_SAUCE_MODULE_H_
#define SAUCE_SAUCE_MODULE_H_

#include <memory>

#include <sauce/internal/bindings.h>

namespace sauce {

template<typename Iface, typename Constructor, typename Allocator = std::allocator<void> >
class New {
public:

  template<typename Injector>
  static ::sauce::internal::bindings::New<Injector, Iface, Allocator,
                                          Constructor> * bindings(Iface) {
    return NULL;
  }

};

}

#endif // ifndef SAUCE_SAUCE_MODULE_H_