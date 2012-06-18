#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <vector>

#include <sauce/exceptions.h>
#include <sauce/memory.h>
#include <sauce/internal/bindings.h>
#include <sauce/internal/pending_thrower.h>
#include <sauce/internal/opaque_binding.h>
#include <sauce/internal/injection_binding.h>

namespace sauce {
namespace internal {

struct ImplicitBindings;

/**
 * The accumulated state passed between Clauses that ultimately results in a new Binding.
 */
class ClauseState {
  Bindings<ImplicitBindings> & bindings;
  PendingThrower & pendingThrower;
  OpaqueBindingPtr pendingBinding;

public:

  ClauseState(Bindings<ImplicitBindings> & bindings, PendingThrower & pendingThrower):
    bindings(bindings),
    pendingThrower(pendingThrower),
    pendingBinding() {
    pendingThrower.throwAnyPending();
  }

  virtual ~ClauseState() {
    if (pendingBinding.get() != NULL) {
      bindings.put(pendingBinding);
    }
  }

  template<typename Scope, typename BoundInjection>
  void bind() {
    typedef typename BoundInjection::Dependency Dependency;
    typename BoundInjection::InjectionPtr injection(new BoundInjection());
    pendingBinding.reset(new InjectionBinding<Dependency, Scope>(injection));
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

  template<typename Scope, typename BoundInjection>
  void bind(BoundInjection) {
    state->template bind<Scope, BoundInjection>();
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
