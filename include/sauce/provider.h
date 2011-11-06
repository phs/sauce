#ifndef SAUCE_SAUCE_PROVIDER_H_
#define SAUCE_SAUCE_PROVIDER_H_

#include <cassert>

#include <sauce/memory.h>
#include <sauce/internal/key.h>

namespace sauce {

class Injector;

namespace internal {
class ProviderFriend;
}

/**
 * An interface for including custom factories in an Injector.
 */
template<typename Dependency>
class Provider {

  typedef typename i::Key<Dependency>::Iface Iface;

  friend class ::sauce::internal::ProviderFriend;

  sauce::weak_ptr<Provider<Dependency> > weak;
  void setSelf(sauce::shared_ptr<Provider<Dependency> > shared) {
    assert(shared.get() == this);
    weak = shared;
  }

protected:

  sauce::shared_ptr<Injector> getSelf() const {
    sauce::shared_ptr<Injector> self = weak.lock();
    assert(self.get() == this);
    return self;
  }

public:

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
