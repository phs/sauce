#ifndef SAUCE_BINDER_H_
#define SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/named.h>
#include <sauce/scopes.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/injections/all.h>
#include <sauce/internal/key.h>
#include <sauce/internal/pending_thrower.h>

namespace sauce {

template<typename Dependency, typename Scope, typename Ctor>
class ToClause;

/**
 * Binds to a specific constructor and allocator.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class AllocateFromClause:
  public i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> > {

  typedef i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> > Clause;

  friend class ToClause<Dependency, Scope, Ctor>;
  friend class i::Clause<AllocateFromClause<Dependency, Scope, Ctor, Allocator> >;

  void complete() {
    this->template bind<inj::NewInjection<Dependency, Scope, Ctor, Allocator> >();
  }
};

template<typename Iface>
class BindClause;

template<typename Dependency>
class NamedClause;

template<typename Dependency, typename Scope>
class InClause;

/**
 * Binds to a provider.
 */
template<typename Dependency, typename Scope, typename Provider>
class ToProviderClause:
  public i::Clause<ToProviderClause<Dependency, Scope, Provider> > {

  typedef typename i::Key<Dependency>::Iface Iface;
  typedef i::Clause<ToProviderClause<Dependency, Scope, Provider> > Clause;

  friend class BindClause<Iface>;
  friend class NamedClause<Dependency>;
  friend class InClause<Dependency, Scope>;
  friend class i::Clause<ToProviderClause<Dependency, Scope, Provider> >;

  void complete() {
    this->template bind<inj::ProviderInjection<Dependency, Scope, Provider> >();
  }
};

/**
 * Binds to a specific constructor allocating from the heap.
 */
template<typename Dependency, typename Scope, typename Ctor>
class ToClause:
  public i::Clause<ToClause<Dependency, Scope, Ctor> > {

  typedef typename i::Key<Dependency>::Iface Iface;
  typedef i::Clause<ToClause<Dependency, Scope, Ctor> > Clause;

  friend class BindClause<Iface>;
  friend class NamedClause<Dependency>;
  friend class InClause<Dependency, Scope>;
  friend class i::Clause<ToClause<Dependency, Scope, Ctor> >;

  void complete() {
    this->template bind<inj::NewInjection<Dependency, Scope, Ctor, std::allocator<Iface> > >();
  }

public:

  template<typename Allocator>
  AllocateFromClause<Dependency, Scope, Ctor, Allocator> allocateFrom() {
    return this->template pass<AllocateFromClause<Dependency, Scope, Ctor, Allocator> >();
  }

};

/**
 * Scopes the binding.
 */
template<typename Dependency, typename Scope>
class InClause:
  public i::Clause<InClause<Dependency, Scope> > {

  typedef typename i::Key<Dependency>::Iface Iface;
  typedef i::Clause<InClause<Dependency, Scope> > Clause;

  friend class BindClause<Iface>;
  friend class NamedClause<Dependency>;
  friend class i::Clause<InClause<Dependency, Scope> >;

  void complete() {
    this->template throwLater<PartialBindingFor<Dependency> >();
  }

public:

  template<typename Ctor>
  ToClause<Dependency, Scope, Ctor> to() {
    return this->template pass<ToClause<Dependency, Scope, Ctor> >();
  }

  template<typename Provider>
  ToProviderClause<Dependency, Scope, Provider> toProvider() {
    return this->template pass<ToProviderClause<Dependency, Scope, Provider> >();
  }

};

/**
 * Names the binding.
 */
template<typename Dependency>
class NamedClause:
  public i::Clause<NamedClause<Dependency> > {

  typedef typename i::Key<Dependency>::Iface Iface;
  typedef i::Clause<NamedClause<Dependency> > Clause;

  friend class BindClause<Iface>;
  friend class i::Clause<NamedClause<Dependency> >;

  void complete() {
    this->template throwLater<PartialBindingFor<Dependency> >();
  }

public:

  template<typename Scope>
  InClause<Dependency, Scope> in() {
    return this->template pass<InClause<Dependency, Scope> >();
  }

  template<typename Ctor>
  ToClause<Dependency, NoScope, Ctor> to() {
    return this->template pass<ToClause<Dependency, NoScope, Ctor> >();
  }

  template<typename Provider>
  ToProviderClause<Dependency, NoScope, Provider> toProvider() {
    return this->template pass<ToProviderClause<Dependency, NoScope, Provider> >();
  }

};

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class BindClause:
  public i::Clause<BindClause<Iface> > {

  typedef i::Clause<BindClause<Iface> > Clause;

  friend class Binder;
  friend class i::Clause<BindClause<Iface> >;

  void complete() {
    this->template throwLater<PartialBindingFor<Named<Iface, Unnamed> > >();
  }

public:

  template<typename Name>
  NamedClause<Named<Iface, Name> > named() {
    return this->template pass<NamedClause<Named<Iface, Name> > >();
  }

  template<typename Scope>
  InClause<Named<Iface, Unnamed>, Scope> in() {
    return this->template pass<InClause<Named<Iface, Unnamed>, Scope> >();
  }

  template<typename Ctor>
  ToClause<Named<Iface, Unnamed>, NoScope, Ctor> to() {
    return this->template pass<ToClause<Named<Iface, Unnamed>, NoScope, Ctor> >();
  }

  template<typename Provider>
  ToProviderClause<Named<Iface, Unnamed>, NoScope, Provider> toProvider() {
    return this->template pass<ToProviderClause<Named<Iface, Unnamed>, NoScope, Provider> >();
  }

};

class Modules;

namespace internal {
class ImplicitBindings;
}

/**
 * Passed to modules to create bindings.
 */
class Binder: public i::PendingThrower {
  i::Bindings<i::ImplicitBindings> & bindings;

  friend class Modules;

  Binder(i::Bindings<i::ImplicitBindings> & bindings):
    PendingThrower(),
    bindings(bindings) {}

public:

  /**
   * Begin binding the chosen interface.
   */
  template<typename Iface>
  BindClause<Iface> bind() {
    i::ClauseStatePtr clauseState(new i::ClauseState(bindings, *this));
    BindClause<Iface> bindClause;
    bindClause.setState(clauseState);
    return bindClause;
  }

};

}

#endif // SAUCE_BINDER_H_
