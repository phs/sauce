#ifndef SAUCE_SAUCE_CLAUSE_H_
#define SAUCE_SAUCE_CLAUSE_H_

#include <sauce/internal/bindings.h>

namespace sauce {
namespace internal {

/**
 * Base class for parts of the fluent binding API.
 */
template<typename Derived>
class Clause {
  bool act;
  Bindings * bindings;

protected:

  Clause():
    act(true),
    bindings(NULL) {}

  template<typename Next>
  Next pass() {
    act = false;
    Next next;
    next.setBindings(*bindings);
    return next;
  }

  template<typename Binding>
  void put() {
    bindings->template put<Binding>();
  }

  template<typename Exception>
  void throwLater() {
    bindings->template throwLater<Exception>();
  }

public:

  void setBindings(Bindings & bindings) {
    this->bindings = &bindings;
  }

  virtual ~Clause() {
    if (act) {
      Derived::activate(*this);
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_CLAUSE_H_
