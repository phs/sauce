#ifndef SAUCE_SAUCE_NAMED_H_
#define SAUCE_SAUCE_NAMED_H_

#include <sauce/memory.h>
#include <sauce/internal/type_id.h>

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
 * A complete specification of a dependency request.
 *
 * TODO Unify with Named and TypeId?
 */
template<typename Iface_>
struct Key {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Unnamed Name;

  /**
   * Note this is not Iface_, but Named<Iface_, Unnamed>.
   *
   * They are logically equivalent, but have different TypeIds.  Where it is ambiguous, we use
   * the explicit named version (captured by this typedef.)
   */
  typedef Named<Iface, Name> Normalized;
};

/**
 * Template specialization when an actual name is used.
 */
template<typename Iface_, typename Name_>
struct Key<Named<Iface_, Name_> > {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Name_ Name;
  typedef Named<Iface, Name> Normalized;
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_NAMED_H_