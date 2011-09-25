#ifndef SAUCE_SAUCE_BINDER_H_
#define SAUCE_SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/internal/binding.h>
#include <sauce/internal/bindings/all.h>

namespace sauce {

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class BindingBuilder {

  typedef BindingBuilder<Iface> Builder;
  typedef SAUCE_SHARED_PTR<i::Binding> BindingPointer;

  i::BindingMap & bindingMap;

  friend class Binder;

  BindingBuilder(i::BindingMap & bindingMap):
    bindingMap(bindingMap) {}

public:

  template<typename Ctor, typename Allocator>
  void to() {
    BindingPointer binding(new b::New<Iface, Ctor, Allocator>());
    bindingMap.insert(std::make_pair(binding->getKey(), binding));
  }

};

class Bindings;

/**
 * A pure interface passed to modules to create bindings.
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
  BindingBuilder<Iface> bind() {
    return BindingBuilder<Iface>(bindingMap);
  }

};

}

#endif // ifndef SAUCE_SAUCE_BINDER_H_