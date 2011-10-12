#ifndef SAUCE_SAUCE_BINDER_H_
#define SAUCE_SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/named.h>
#include <sauce/scopes.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/key.h>
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

  AllocateFromClause(i::Bindings & bindings):
    i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> >(bindings) {}

  static void activate(i::Bindings & bindings) {
    bindings.put<b::New<Dependency, Scope, Ctor, Allocator> >();
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

  ToClause(i::Bindings & bindings):
    i::Clause<ToClause<Dependency, Scope, Ctor> >(bindings) {}

  static void activate(i::Bindings & bindings) {
    AllocateFromClause<Dependency, Scope, Ctor, std::allocator<Iface> >::activate(bindings);
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

  InClause(i::Bindings & bindings):
    i::Clause<InClause<Dependency, Scope> >(bindings) {}

  static void activate(i::Bindings & bindings) {
    bindings.throwLater<PartialBindingFor<Dependency> >();
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

  NamedClause(i::Bindings & bindings):
    i::Clause<NamedClause<Dependency> >(bindings) {}

  static void activate(i::Bindings & bindings) {
    bindings.throwLater<PartialBindingFor<Dependency> >();
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

  BindClause(i::Bindings & bindings):
    i::Clause<BindClause<Iface> >(bindings) {}

  static void activate(i::Bindings & bindings) {
    bindings.throwLater<PartialBindingFor<Named<Iface, Unnamed> > >();
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

class Modules;

/**
 * Passed to modules to create bindings.
 */
class Binder {
  i::Bindings & bindings;

  friend class Modules;

  Binder(i::Bindings & bindings):
    bindings(bindings) {}

public:

  /**
   * Begin binding the chosen interface.
   */
  template<typename Iface>
  BindClause<Iface> bind() {
    bindings.throwPending();
    return BindClause<Iface>(bindings);
  }

};

}

#endif // SAUCE_SAUCE_BINDER_H_