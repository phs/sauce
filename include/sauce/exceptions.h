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
 * Raised when a binding cannot be found.
 */
struct UnboundException: Exception {
  UnboundException():
    Exception("Request for unbound interface.") {}
};

/**
 * Raised when a binding cannot be found for the given interface.
 */
template<typename Dependency>
struct UnboundExceptionFor: UnboundException {
  UnboundExceptionFor(): UnboundException() {}
};

/**
 * Raised when a binding hasn't been completely specified.
 */
struct PartialBindingException: Exception {
  PartialBindingException():
    Exception("Binding is incomplete.") {}
};

/**
 * Raised when a binding hasn't been completely specified for the given interface.
 */
template<typename Dependency>
struct PartialBindingFor: PartialBindingException {
  PartialBindingFor(): PartialBindingException() {}
};

/**
 * Raised when a dependency cycle is found.
 */
struct CircularDependencyException: Exception {
  CircularDependencyException():
    Exception("Request for unbound interface.") {}
};

/**
 * Raised when a dependency cycle is found for the given interface.
 */
template<typename Dependency>
struct CircularDependencyExceptionFor: CircularDependencyException {
  CircularDependencyExceptionFor(): CircularDependencyException() {}
};

}

#endif // SAUCE_SAUCE_EXCEPTIONS_H_
