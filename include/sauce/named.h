#ifndef SAUCE_SAUCE_NAMED_H_
#define SAUCE_SAUCE_NAMED_H_

#include <sauce/memory.h>

namespace sauce {

/**
 * Wrap dependency requests with Named to choose one of several named alternatives.
 */
template<typename Iface, typename Name>
class Named {};

/**
 * The name of all unnamed dependencies.
 */
class Unnamed {};

namespace internal {

/**
 * Wraps an Iface and a Name.
 */
template<typename Iface_>
struct DependencyKey {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Unnamed Name;

  /**
   * Note this is not Iface_, but Named<Iface_, Unnamed>.
   *
   * They are logically equivalent, but have different BindKeys.  Where it is ambiguous, we use
   * the explicit named version (captured by this typedef.)
   */
  typedef Named<Iface, Name> Dependency;
};

/**
 * Template specialization when an actual name is used.
 */
template<typename Iface_, typename Name_>
struct DependencyKey<Named<Iface_, Name_> > {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Name_ Name;
  typedef Named<Iface, Name> Dependency;
};

}

namespace i = ::sauce::internal;

}

#endif // ifndef SAUCE_SAUCE_NAMED_H_