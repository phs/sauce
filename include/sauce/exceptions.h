#ifndef SAUCE_SAUCE_EXCEPTIONS_H_
#define SAUCE_SAUCE_EXCEPTIONS_H_

#include <stdexcept>

namespace sauce {

/**
 * Raised when no binding can be found for a given interface.
 *
 * TODO sure would be nice to know who..
 */
struct UnboundException:
  public std::runtime_error {
  UnboundException():
    std::runtime_error("Request for unbound interface.") {}
};

}

#endif // ifndef SAUCE_SAUCE_EXCEPTIONS_H_