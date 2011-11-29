#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/opaque_binding.h>

namespace sauce {
namespace internal {

class ImplicitBindings;

/**
 * The accumulated state passed between Clauses that ultimately results in a new Binding.
 */
class ClauseState {
  Bindings<ImplicitBindings> & bindings;
  PendingThrower & pendingThrower;
  OpaqueBindingPtr binding;

public:

  ClauseState(Bindings<ImplicitBindings> & bindings, PendingThrower & pendingThrower):
    bindings(bindings),
    pendingThrower(pendingThrower),
    binding() {
    pendingThrower.throwAnyPending();
  }

  virtual ~ClauseState() {
    if (binding.get() != NULL) {
      bindings.put(binding);
    }
  }

  template<typename BoundInjection>
  void bind() {
    typedef typename BoundInjection::Dependency Dependency;
    typedef typename BoundInjection::Scope Scope;
    typename BoundInjection::InjectionPtr injection(new BoundInjection());
    binding = injection;
  }

  template<typename Exception>
  void throwLater() {
    pendingThrower.template throwLater<Exception>();
  }

  void clear() {
    pendingThrower.clear();
  }
};

typedef sauce::shared_ptr<ClauseState> ClauseStatePtr;

/**
 * Base class for parts of the fluent binding API.
 */
class Clause {
  ClauseStatePtr state;

  virtual void onComplete() = 0;

protected:

  Clause():
    state() {}

  template<typename Next>
  Next pass(Next next) {
    state->clear();
    next.setState(state);
    return next;
  }

  template<typename BoundInjection>
  void bind(BoundInjection) {
    state->template bind<BoundInjection>();
  }

  template<typename Exception>
  void throwLater(Exception) {
    state->template throwLater<Exception>();
  }

public:

  void setState(ClauseStatePtr state) {
    this->state = state;
    onComplete();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
