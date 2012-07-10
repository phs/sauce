#ifndef SAUCE_INTERNAL_SELF_INJECTOR_H_
#define SAUCE_INTERNAL_SELF_INJECTOR_H_

#include <sauce/memory.h>

namespace sauce {
namespace internal {

/**
 * If a type requests injection of its own smart pointer, do so.
 *
 * An interface Iface requests this by exposing void setSelf(sauce::weak_ptr<Iface>), detected by SFINAE.
 */
template<typename T>
class SelfInjector {
  typedef sauce::shared_ptr<T> Ptr;
  typedef void (T::* SetterMethod)(sauce::weak_ptr<T>);

  template<typename U, U>
  struct EqualTypes;

  template<typename DoesNotRequestSelf>
  void setSelfIfRequested(Ptr, ...) {}

  template<typename RequestsSelf>
  void setSelfIfRequested(Ptr ptr, EqualTypes<SetterMethod, & RequestsSelf::setSelf> *) {
    sauce::weak_ptr<T> weak(ptr);
    ptr->setSelf(weak);
  }

public:

  void setSelf(Ptr ptr) {
    setSelfIfRequested<T>(ptr, 0);
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_SELF_INJECTOR_H_
