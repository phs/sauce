#ifndef SAUCE_BINDER_H_
#define SAUCE_BINDER_H_

#include <memory>
#include <utility>

#include <sauce/named.h>
#include <sauce/provider.h>
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
class AllocateFromClause: public i::Clause {
  void onComplete() {
    bind<Scope>(inj::NewInjection<Dependency, Ctor, Allocator>());
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
class ToClause: public i::Clause {
  typedef typename i::Key<Dependency>::Iface Iface;

  void onComplete() {
    bind<Scope>(inj::NewInjection<Dependency, Ctor, std::allocator<Iface> >());
  }

public:

  template<typename Allocator>
  AllocateFromClause<Dependency, Scope, Ctor, Allocator> allocateFrom() {
    return pass(AllocateFromClause<Dependency, Scope, Ctor, Allocator>());
  }
};

/**
 * Binds to a provider.
 */
template<typename Dependency, typename Scope, typename ProviderCtor>
class ToProviderClause: public i::Clause {
  typedef typename i::Key<Dependency>::Iface Iface;
  typedef typename i::Key<Dependency>::Name Name;
  typedef Named<Provider<Iface>, Name> ProviderDependency;

  void onComplete() {
    bind<Scope>(inj::ProviderInjection<Dependency, ProviderDependency>());
  }
};

/**
 * Scopes the binding.
 */
template<typename Dependency, typename Scope>
class InClause: public i::Clause {
  typedef typename i::Key<Dependency>::Iface Iface;

  void onComplete() {
    throwLater(PartialBindingExceptionFor<Dependency>());
  }

public:

  template<typename Ctor>
  ToClause<Dependency, Scope, Ctor> to() {
    return pass(ToClause<Dependency, Scope, Ctor>());
  }

  template<typename ProviderCtor>
  ToProviderClause<Dependency, Scope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<Dependency, Scope, ProviderCtor>());
  }
};

/**
 * Names the binding.
 */
template<typename Dependency>
class NamedClause: public i::Clause {
  typedef typename i::Key<Dependency>::Iface Iface;

  void onComplete() {
    throwLater(PartialBindingExceptionFor<Dependency>());
  }

public:

  template<typename Scope>
  InClause<Dependency, Scope> in() {
    return pass(InClause<Dependency, Scope>());
  }

  template<typename Ctor>
  ToClause<Dependency, NoScope, Ctor> to() {
    return pass(ToClause<Dependency, NoScope, Ctor>());
  }

  template<typename ProviderCtor>
  ToProviderClause<Dependency, NoScope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<Dependency, NoScope, ProviderCtor>());
  }
};

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class BindClause: public i::Clause {

  void onComplete() {
    throwLater(PartialBindingExceptionFor<Named<Iface, Unnamed> >());
  }

public:

  template<typename Name>
  NamedClause<Named<Iface, Name> > named() {
    return pass(NamedClause<Named<Iface, Name> >());
  }

  template<typename Scope>
  InClause<Named<Iface, Unnamed>, Scope> in() {
    return pass(InClause<Named<Iface, Unnamed>, Scope>());
  }

  template<typename Ctor>
  ToClause<Named<Iface, Unnamed>, NoScope, Ctor> to() {
    return pass(ToClause<Named<Iface, Unnamed>, NoScope, Ctor>());
  }

  template<typename ProviderCtor>
  ToProviderClause<Named<Iface, Unnamed>, NoScope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<Named<Iface, Unnamed>, NoScope, ProviderCtor>());
  }
};

class Modules;

namespace internal {
struct ImplicitBindings;
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
