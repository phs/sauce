#ifndef SAUCE_SAUCE_EXCEPTIONS_H_
#define SAUCE_SAUCE_EXCEPTIONS_H_

namespace sauce {

/*
 * Thrown when disposing a value that was not provided by the injector.
 */
class UnknownDisposal:
  public std::runtime_error {
public:
  UnknownDisposal():
    std::runtime_error("UnknownDisposal") {}
};

} // namespace sauce

#endif