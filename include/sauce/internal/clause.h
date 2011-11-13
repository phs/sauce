#ifndef SAUCE_CLAUSE_H_
#define SAUCE_CLAUSE_H_

#include <sauce/memory.h>
#include <sauce/internal/bindings.h>

namespace sauce {
namespace internal {

class ImplicitBindings;

/**
 * The accumulated state passed between Clauses that ultimately results in a new Binding.
 */
class ClauseState {

  Bindings<ImplicitBindings> & bindings;

public:

  ClauseState(Bindings<ImplicitBindings> & bindings):
    bindings(bindings) {}

  template<typename Binding>
  void put() {
    OpaqueBindingPtr binding(new Binding());
    bindings.put(binding);
  }

  template<typename Exception>
  void throwLater() {
    bindings.template throwLater<Exception>();
  }

};

typedef sauce::shared_ptr<ClauseState> ClauseStatePtr;

/**
 * Base class for parts of the fluent binding API.
 */
template<typename Derived>
class Clause {
  bool act;
  ClauseStatePtr state;

protected:

  Clause():
    act(true),
    state() {}

  template<typename Next>
  Next pass() {
    act = false;
    Next next;
    next.setState(state);
    return next;
  }

  template<typename Binding>
  void put() {
    state->template put<Binding>();
  }

  template<typename Exception>
  void throwLater() {
    state->template throwLater<Exception>();
  }

public:

  void setState(ClauseStatePtr state) {
    this->state = state;
  }

  virtual ~Clause() {
    if (act) {
      Derived::complete(*this);
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_CLAUSE_H_
