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

  template<typename Binding>
  void bind() {
    binding.reset(new Binding());
  }

  template<typename Exception>
  void throwLater() {
    pendingThrower.template throwLater<Exception>();
  }

  void clear() {
    pendingThrower.clear();
    binding.reset();
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

  template<typename Binding_>
  void bind(Binding_) {
    state->template bind<Binding_>();
  }

  template<typename Exception>
  void throwLater() {
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
