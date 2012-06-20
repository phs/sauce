#ifndef SAUCE_EXCEPTIONS_H_
#define SAUCE_EXCEPTIONS_H_

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
 * Thrown when a binding cannot be found.
 */
struct UnboundException: Exception {
  UnboundException(std::string name):
    Exception("Request for unbound interface " + name + ".") {}
};

/**
 * Thrown when a binding cannot be found for the given interface.
 */
template<typename Dependency>
struct UnboundExceptionFor: UnboundException {
  UnboundExceptionFor(std::string name): UnboundException(name) {}
};

/**
 * Thrown when a binding hasn't been completely specified.
 */
struct PartialBindingException: Exception {
  PartialBindingException():
    Exception("Binding is incomplete.") {}
};

/**
 * Thrown when a binding hasn't been completely specified for the given interface.
 */
template<typename Dependency>
struct PartialBindingExceptionFor: PartialBindingException {
  PartialBindingExceptionFor(): PartialBindingException() {}
};

/**
 * Thrown when a dependency cycle is found.
 */
struct CircularDependencyException: Exception {
  CircularDependencyException():
    Exception("Request for unbound interface.") {}
};

/**
 * Thrown when a dependency cycle is found for the given interface.
 */
template<typename Dependency>
struct CircularDependencyExceptionFor: CircularDependencyException {
  CircularDependencyExceptionFor(): CircularDependencyException() {}
};

/**
 * Thrown when a provision is requested outside of its bound scope.
 */
struct OutOfScopeException: Exception {
  OutOfScopeException():
    Exception("Out of dependency scope.") {}
};

/**
 * Thrown when a provision is requested outside of its given, bound scope.
 */
template<typename Scope>
struct OutOfScopeExceptionFor: OutOfScopeException {
  OutOfScopeExceptionFor(): OutOfScopeException() {}
};

/**
 * Thrown when re-entering a scope that is already open.
 */
struct AlreadyInScopeException: Exception {
  AlreadyInScopeException():
    Exception("Already in scope.") {}
};

/**
 * Thrown when re-entering the given scope, which is already open.
 */
template<typename Scope>
struct AlreadyInScopeExceptionFor: AlreadyInScopeException {
  AlreadyInScopeExceptionFor(): AlreadyInScopeException() {}
};

/**
 * Thrown when exiting the singleton scope.
 */
struct ExitingSingletonScopeException: Exception {
  ExitingSingletonScopeException():
    Exception("Can't exit SingletonScope") {}
};

}

#endif // SAUCE_EXCEPTIONS_H_
