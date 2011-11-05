#ifndef SAUCE_SAUCE_PROVIDER_H_
#define SAUCE_SAUCE_PROVIDER_H_

#include <sauce/internal/key.h>

namespace sauce {

/**
 * An interface for including custom factories in an Injector.
 */
template<typename Dependency>
struct Provider {

  typedef typename i::Key<Dependency>::Iface Iface;

  /**
   * Provide a naked Iface pointer.
   */
  virtual Iface * provide() = 0;

  /**
   * Dispose of an Iface provided by this provider.
   */
  virtual void dispose(Iface *) = 0;

};

}

#endif // SAUCE_SAUCE_PROVIDER_H_
