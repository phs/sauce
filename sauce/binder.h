#ifndef SAUCE_BINDER_H_
#define SAUCE_BINDER_H_

#include <memory>
#include <string>
#include <utility>

#include <sauce/named.h>
#include <sauce/provider.h>
#include <sauce/scopes.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/clause.h>
#include <sauce/internal/implicit_provider_binding.h>
#include <sauce/internal/injector_binding.h>
#include <sauce/internal/key.h>
#include <sauce/internal/new_binding.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/provider_binding.h>

namespace sauce {

/**
 * Binds to a specific method on an already-provided instance.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator, typename Method>
class SettingClause: public i::FinalClause<Dependency, Scope, Ctor, Allocator> {
  Method method;

  void onComplete() {}

public:

  SettingClause(Method method):
    method(method) {}

};

/**
 * Assigns dynamic name requirements to the explicit dependencies of a binding.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class NamingClause: public i::FinalClause<Dependency, Scope, Ctor, Allocator> {
  void onComplete() {}

public:

  NamingClause<Dependency, Scope, Ctor, Allocator> & naming(unsigned int position, std::string const name) {
    this->bindDynamicDependencyName(position, name);
    return *this;
  }

  template<typename Method>
  SettingClause<Dependency, Scope, Ctor, Allocator, Method> setting(Method method) {
    return pass(SettingClause<Dependency, Scope, Ctor, Allocator, Method>(method));
  }
};

/**
 * Binds to a specific constructor and allocator.
 */
template<typename Dependency, typename Scope, typename Ctor, typename Allocator>
class AllocateFromClause: public i::FinalClause<Dependency, Scope, Ctor, Allocator> {
  void onComplete() {
    this->bind();
  }

public:

  NamingClause<Dependency, Scope, Ctor, Allocator> naming(unsigned int position, std::string const name) {
    return pass(NamingClause<Dependency, Scope, Ctor, Allocator>()).naming(position, name);
  }

  template<typename Method>
  SettingClause<Dependency, Scope, Ctor, Allocator, Method> setting(Method method) {
    return pass(SettingClause<Dependency, Scope, Ctor, Allocator, Method>(method));
  }
};

/**
 * Binds to a specific constructor, allocating from the heap.
 */
template<typename Dependency, typename Scope, typename Ctor>
class ToClause: public i::FinalClause<Dependency, Scope, Ctor, std::allocator<int> > {
  typedef typename i::Key<Dependency>::Iface Iface;

  void onComplete() {
    this->bind();
  }

public:

  template<typename Allocator>
  AllocateFromClause<Dependency, Scope, Ctor, Allocator> allocatedFrom() {
    return pass(AllocateFromClause<Dependency, Scope, Ctor, Allocator>());
  }

  NamingClause<Dependency, Scope, Ctor, std::allocator<int> > naming(unsigned int position, std::string const name) {
    return pass(NamingClause<Dependency, Scope, Ctor, std::allocator<int> >()).naming(position, name);
  }

  template<typename Method>
  SettingClause<Dependency, Scope, Ctor, std::allocator<int>, Method> setting(Method method) {
    return pass(SettingClause<Dependency, Scope, Ctor, std::allocator<int>, Method>(method));
  }
};

/**
 * Binds to a provider with a specific constructor, allocating from the heap.
 */
template<typename ProviderDependency, typename Scope, typename ProviderCtor>
class ToProviderClause: public i::FinalClause<ProviderDependency, Scope, ProviderCtor, std::allocator<int> > {

  void onComplete() {
    this->bindExtra();
    this->bind();
  }

public:

  template<typename Allocator>
  AllocateFromClause<ProviderDependency, Scope, ProviderCtor, Allocator> allocatedFrom() {
    return pass(AllocateFromClause<ProviderDependency, Scope, ProviderCtor, Allocator>());
  }

  NamingClause<ProviderDependency, Scope, ProviderCtor, std::allocator<int> > naming(
    unsigned int position, std::string const name) {
    return pass(NamingClause<ProviderDependency, Scope, ProviderCtor, std::allocator<int> >()).naming(position, name);
  }

  template<typename Method>
  SettingClause<ProviderDependency, Scope, ProviderCtor, std::allocator<int>, Method> setting(Method method) {
    return pass(SettingClause<ProviderDependency, Scope, ProviderCtor, std::allocator<int>, Method>(method));
  }
};

/**
 * Scopes the binding.
 */
template<typename Dependency, typename Scope>
class InClause: public i::InitialClause<Dependency> {
  typedef typename i::Key<Dependency>::Iface Iface;
  typedef typename i::Key<Dependency>::Name Name;
  typedef Named<Provider<Iface>, Name> ProviderDependency;

public:

  template<typename Ctor>
  ToClause<Dependency, Scope, Ctor> to() {
    return pass(ToClause<Dependency, Scope, Ctor>());
  }

  template<typename ProviderCtor>
  ToProviderClause<ProviderDependency, Scope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<ProviderDependency, Scope, ProviderCtor>());
  }
};

/**
 * Names the binding.
 *
 * There are two kinds of names: static and dynamic.  Static names are given by template parameter
 * type tags.  Dynamic ones are string arguments.  Each binding can use only one kind, but bindings
 * using both kinds can be mixed in the same module.
 */
template<typename Dependency>
class NamedClause: public i::InitialClause<Dependency> {
  typedef typename i::Key<Dependency>::Iface Iface;
  typedef typename i::Key<Dependency>::Name Name;
  typedef Named<Provider<Iface>, Name> ProviderDependency;

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
  ToProviderClause<ProviderDependency, NoScope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<ProviderDependency, NoScope, ProviderCtor>());
  }
};

class Binder;

/**
 * A builder that creates a single binding.
 */
template<typename Iface>
class BindClause: public i::InitialClause<Named<Iface, Unnamed> > {
  typedef Named<Provider<Iface>, Unnamed> ProviderDependency;

  BindClause(i::ClauseStatePtr state):
    i::InitialClause<Named<Iface, Unnamed> >(state) {
    this->onComplete();
  }

  friend class Binder;

public:

  template<typename Name>
  NamedClause<Named<Iface, Name> > named() {
    return pass(NamedClause<Named<Iface, Name> >());
  }

  NamedClause<Named<Iface, Unnamed> > named(std::string const name) {
    this->setDynamicName(name);
    return pass(NamedClause<Named<Iface, Unnamed> >());
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
  ToProviderClause<ProviderDependency, NoScope, ProviderCtor> toProvider() {
    return pass(ToProviderClause<ProviderDependency, NoScope, ProviderCtor>());
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
    BindClause<Iface> bindClause(clauseState);
    return bindClause;
  }
};

}

#endif // SAUCE_BINDER_H_
