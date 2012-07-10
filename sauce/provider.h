#ifndef SAUCE_PROVIDER_H_
#define SAUCE_PROVIDER_H_

#include <cassert>

#include <sauce/memory.h>
#include <sauce/internal/disposal_deleter.h>
#include <sauce/internal/key.h>

namespace sauce {

class Injector;

template<typename Dependency>
class Provider;

/**
 * An interface for including custom factories in an Injector.
 *
 * TODO: It would really be great if this could be reduced to a template concept..
 */
template<typename Dependency>
class Provider {
  sauce::weak_ptr<Provider<Dependency> > weak;

protected:

  sauce::shared_ptr<Provider<Dependency> > getSelf() const {
    sauce::shared_ptr<Provider<Dependency> > self = weak.lock();
    assert(self.get() == this);
    return self;
  }

public:

  void setSelf(sauce::shared_ptr<Provider<Dependency> > shared) {
    assert(shared.get() == this);
    weak = shared;
  }

  typedef typename i::Key<Dependency>::Iface Iface;

  /**
   * Provide an Iface.
   */
  virtual sauce::shared_ptr<Iface> get() = 0;
};

/**
 * An interface for including custom factories in an Injector.
 */
template<typename Dependency>
class AbstractProvider: public Provider<Dependency> {

  typedef typename i::Key<Dependency>::Iface Iface;
  typedef AbstractProvider<Dependency> Abstract;
  typedef i::DisposalDeleter<Iface, Abstract> Deleter;

  friend class i::DisposalDeleter<Iface, Abstract>;

  /**
   * Provide a naked Iface pointer.
   */
  virtual Iface * provide() = 0;

  /**
   * Dispose of an Iface provided by this provider.
   */
  virtual void dispose(Iface *) = 0;

public:

  /**
   * Provide an Iface.
   *
   * A naked instance pointer is obtained with provide(), and wrapped in a shared_ptr.  It is also
   * given a custom deleter, to dispose of the naked pointer with dispose(Iface *).
   */
  sauce::shared_ptr<Iface> get() {
    Deleter deleter(sauce::static_pointer_cast<Abstract>(this->getSelf()));
    sauce::shared_ptr<Iface> provided(provide(), deleter);
    return provided;
  }

};

}

#endif // SAUCE_PROVIDER_H_
