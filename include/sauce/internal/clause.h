#ifndef SAUCE_SAUCE_CLAUSE_H_
#define SAUCE_SAUCE_CLAUSE_H_

#include <sauce/internal/binding.h>

namespace sauce {
namespace internal {

/**
 * Base class for parts of the fluent binding API.
 */
template<typename Action>
class Clause {
  bool act;
  BindingMap & bindingMap;

protected:

  Clause(BindingMap & bindingMap):
    act(true),
    bindingMap(bindingMap) {}

  BindingMap & pass() {
    act = false;
    return bindingMap;
  }

public:

  virtual ~Clause() {
    if (act) {
      Action action;
      action(bindingMap);
    }
  }
};

/**
 * Invoked when a binding specification isn't finished.
 */
struct IncompleteBinding {
  void operator()(BindingMap &) {
    // Haha! Don't throw in a destructor.
  }
};

}

namespace i = ::sauce::internal;

}

#endif // ifndef SAUCE_SAUCE_CLAUSE_H_