#ifndef SAUCE_SAUCE_BINDER_H_
#define SAUCE_SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/internal/binding.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/bindings/all.h>

namespace sauce {

template<typename Iface, typename Name, typename Ctor>
class To;

/**
 * Binds to a specific constructor and allocator.
 */
template<typename Iface, typename Name, typename Ctor, typename Allocator>
class AllocateFrom:
  public i::Clause<AllocateFrom<Iface, Name, Ctor, Allocator> > {

  friend class To<Iface, Name, Ctor>;
  friend class i::Clause<AllocateFrom<Iface, Name, Ctor, Allocator> >;

  AllocateFrom(i::BindingMap & bindingMap):
    i::Clause<AllocateFrom<Iface, Name, Ctor, Allocator> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    i::BindingPointer binding(new b::New<Iface, Name, Ctor, Allocator>());
    bindingMap.insert(std::make_pair(binding->getKey(), binding));
  }
};

template<typename Iface>
class Bind;

template<typename Iface, typename Name>
class NamedClause;

/**
 * Binds to a specific constructor allocating from the heap.
 */
template<typename Iface, typename Name, typename Ctor>
class To:
  public i::Clause<To<Iface, Name, Ctor> > {

  friend class Bind<Iface>;
  friend class NamedClause<Iface, Name>;
  friend class i::Clause<To<Iface, Name, Ctor> >;

  To(i::BindingMap & bindingMap):
    i::Clause<To<Iface, Name, Ctor> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    AllocateFrom<Iface, Name, Ctor, std::allocator<Iface> >::activate(bindingMap);
  }

public:

  template<typename Allocator>
  AllocateFrom<Iface, Name, Ctor, Allocator> allocateFrom() {
    return AllocateFrom<Iface, Name, Ctor, Allocator>(this->pass());
  }

};

/**
 * Names the binding.
 */
template<typename Iface, typename Name>
class NamedClause:
  public i::Clause<NamedClause<Iface, Name> > {

  friend class Bind<Iface>;
  friend class i::Clause<NamedClause<Iface, Name> >;

  NamedClause(i::BindingMap & bindingMap):
    i::Clause<NamedClause<Iface, Name> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    bindingMap.throwLater<PartialBindingFor<Iface, Name> >();
  }

public:

  template<typename Ctor>
  To<Iface, Name, Ctor> to() {
    return To<Iface, Name, Ctor>(this->pass());
  }

};

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

  static void activate(i::BindingMap & bindingMap) {
    bindingMap.throwLater<PartialBindingFor<Iface, Unnamed> >();
  }

public:

  template<typename Name>
  NamedClause<Iface, Name> named() {
    return NamedClause<Iface, Name>(this->pass());
  }

  template<typename Ctor>
  To<Iface, Unnamed, Ctor> to() {
    return To<Iface, Unnamed, Ctor>(this->pass());
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
    bindingMap.throwPending();
    return Bind<Iface>(bindingMap);
  }

};

}

#endif // ifndef SAUCE_SAUCE_BINDER_H_