#ifndef SAUCE_INTERNAL_PENDING_THROWER_H_
#define SAUCE_INTERNAL_PENDING_THROWER_H_

namespace sauce {
namespace internal {

typedef void (*PendingThrow)();

/**
 * Template function used to create typed, deferred exceptions.
 *
 * The exception must have an accessible nullary constructor.
 * Template instantiations will construct and throw an instance.
 */
template<typename Exception>
void pendingThrowFactory() {
  throw Exception();
}

/**
 * A mixin to defer and throw pending exceptions.
 */
class PendingThrower { // Tempted to call it PendingThrowDown
  PendingThrow pending;

public:

  PendingThrower():
    pending(NULL) {}

  /**
   * Save an exception of the given type to throw when it is safe.
   *
   * The exception must have an accessible nullary constructor.
   *
   * Any previously saved exception is dropped.
   */
  template<typename Exception>
  void throwLater() {
    pending = &pendingThrowFactory<Exception>;
  }

  /**
   * Throw and clear any saved exception.
   */
  void throwAnyPending() {
    if (pending) {
      PendingThrow toThrow = pending;
      pending = NULL;
      toThrow();
    }
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_PENDING_THROWER_H_
