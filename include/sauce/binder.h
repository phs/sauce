#ifndef SAUCE_SAUCE_BINDER_H_
#define SAUCE_SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/named.h>
#include <sauce/scopes.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/bindings/all.h>

namespace sauce {

template<typename Dependency, typename Scope, typename Ctor>
class ToClause;

/**
 * Binds to a specific constructor and allocator.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class AllocateFromClause:
  public i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> > {

  friend class ToClause<Dependency, Scope, Ctor>;
  friend class i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> >;

  AllocateFromClause(i::BindingMap & bindingMap):
    i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    i::BindingPointer binding(new b::New<Dependency, Scope, Ctor, Allocator>());
    bindingMap.insert(std::make_pair(binding->getKey(), binding));
  }
};

template<typename Iface>
class BindClause;

template<typename Dependency>
class NamedClause;

template<typename Dependency, typename Scope>
class InClause;

/**
 * Binds to a specific constructor allocating from the heap.
 */
template<typename Dependency, typename Scope, typename Ctor>
class ToClause:
  public i::Clause<ToClause<Dependency, Scope, Ctor> > {

  typedef typename i::Key<Dependency>::Iface Iface;

  friend class BindClause<Iface>;
  friend class NamedClause<Dependency>;
  friend class InClause<Dependency, Scope>;
  friend class i::Clause<ToClause<Dependency, Scope, Ctor> >;

  ToClause(i::BindingMap & bindingMap):
    i::Clause<ToClause<Dependency, Scope, Ctor> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    AllocateFromClause<Dependency, Scope, Ctor, std::allocator<Iface> >::activate(bindingMap);
  }

public:

  template<typename Allocator>
  AllocateFromClause<Dependency, Scope, Ctor, Allocator> allocateFrom() {
    return AllocateFromClause<Dependency, Scope, Ctor, Allocator>(this->pass());
  }

};

/**
 * Scopes the binding.
 */
template<typename Dependency, typename Scope>
class InClause:
  public i::Clause<InClause<Dependency, Scope> > {

  typedef typename i::Key<Dependency>::Iface Iface;

  friend class BindClause<Iface>;
  friend class NamedClause<Dependency>;
  friend class i::Clause<InClause<Dependency, Scope> >;

  InClause(i::BindingMap & bindingMap):
    i::Clause<InClause<Dependency, Scope> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    bindingMap.throwLater<PartialBindingFor<Dependency> >();
  }

public:

  template<typename Ctor>
  ToClause<Dependency, Scope, Ctor> to() {
    return ToClause<Dependency, Scope, Ctor>(this->pass());
  }

};

/**
 * Names the binding.
 */
template<typename Dependency>
class NamedClause:
  public i::Clause<NamedClause<Dependency> > {

  typedef typename i::Key<Dependency>::Iface Iface;

  friend class BindClause<Iface>;
  friend class i::Clause<NamedClause<Dependency> >;

  NamedClause(i::BindingMap & bindingMap):
    i::Clause<NamedClause<Dependency> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    bindingMap.throwLater<PartialBindingFor<Dependency> >();
  }

public:

  template<typename Scope>
  InClause<Dependency, Scope> in() {
    return InClause<Dependency, Scope>(this->pass());
  }

  template<typename Ctor>
  ToClause<Dependency, NoScope, Ctor> to() {
    return ToClause<Dependency, NoScope, Ctor>(this->pass());
  }

};

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class BindClause:
  public i::Clause<BindClause<Iface> > {

  friend class Binder;
  friend class i::Clause<BindClause<Iface> >;

  BindClause(i::BindingMap & bindingMap):
    i::Clause<BindClause<Iface> >(bindingMap) {}

  static void activate(i::BindingMap & bindingMap) {
    bindingMap.throwLater<PartialBindingFor<Named<Iface, Unnamed> > >();
  }

public:

  template<typename Name>
  NamedClause<Named<Iface, Name> > named() {
    return NamedClause<Named<Iface, Name> >(this->pass());
  }

  template<typename Scope>
  InClause<Named<Iface, Unnamed>, Scope> in() {
    return InClause<Named<Iface, Unnamed>, Scope>(this->pass());
  }

  template<typename Ctor>
  ToClause<Named<Iface, Unnamed>, NoScope, Ctor> to() {
    return ToClause<Named<Iface, Unnamed>, NoScope, Ctor>(this->pass());
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
  BindClause<Iface> bind() {
    bindingMap.throwPending();
    return BindClause<Iface>(bindingMap);
  }

};

}

#endif // SAUCE_SAUCE_BINDER_H_