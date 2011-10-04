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
  public i::Clause<i::IncompleteBinding> {

  typedef SAUCE_SHARED_PTR<i::Binding> BindingPointer;

  friend class Binder;

  Bind(i::BindingMap & bindingMap):
    i::Clause<i::IncompleteBinding>(bindingMap) {}

public:

  template<typename Ctor, typename Allocator>
  void to() {
    BindingPointer binding(new b::New<Iface, Ctor, Allocator>());
    bindingMap.insert(std::make_pair(binding->getKey(), binding));
    pass();
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