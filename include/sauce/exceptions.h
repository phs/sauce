#ifndef SAUCE_SAUCE_EXCEPTIONS_H_
#define SAUCE_SAUCE_EXCEPTIONS_H_

#include <string>
#include <stdexcept>

namespace sauce {

/**
 * Base class for all sauce exceptions.
 */
struct Exception: std::runtime_error {
  Exception(std::string message):
    std::runtime_error(message) {}
};

/**
 * Raised when no binding can be found for a given interface.
 *
 * TODO sure would be nice to know who..
 */
struct UnboundException: Exception {
  UnboundException():
    Exception("Request for unbound interface.") {}
};

/**
 * Raised when a cycle is found in the interface's dependencies.
 *
 * TODO sure would be nice to know what the cycle is..
 */
struct CircularDependencyException: Exception {
  CircularDependencyException():
    Exception("Request for unbound interface.") {}
};

}

#endif // ifndef SAUCE_SAUCE_EXCEPTIONS_H_