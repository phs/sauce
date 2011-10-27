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
  Bindings & bindings;

protected:

  Clause(Bindings & bindings):
    act(true),
    bindings(bindings) {}

  Bindings & pass() {
    act = false;
    return bindings;
  }

public:

  virtual ~Clause() {
    if (act) {
      Derived::activate(bindings);
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_CLAUSE_H_
