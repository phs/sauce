#ifndef SAUCE_SAUCE_BINDER_H_
#define SAUCE_SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/internal/binding.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/bindings/all.h>

namespace sauce {

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class Bind:
  public i::Clause<Bind<Iface> > {

  friend class Binder;
  friend class i::Clause<Bind<Iface> >;

  Bind(i::BindingMap & bindingMap):
    i::Clause<Bind<Iface> >(bindingMap) {}

  static void activate(i::BindingMap &) {
    std::cerr << "This should signal an exception to be thrown later." << std::endl;
  }

public:

  template<typename Ctor, typename Allocator>
  void to() {
    i::BindingPointer binding(new b::New<Iface, Ctor, Allocator>());
    this->bindingMap.insert(std::make_pair(binding->getKey(), binding));
    this->pass();
  }

};

class Bindings;

/**
 * Passed to modules to create bindings.
 */
class Binder {
  i::BindingMap & bindingMap;

  friend class Bindings;

  Binder(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

public:

  /**
   * Begin binding the chosen interface.
   */
  template<typename Iface>
  Bind<Iface> bind() {
    return Bind<Iface>(bindingMap);
  }

};

}

#endif // ifndef SAUCE_SAUCE_BINDER_H_