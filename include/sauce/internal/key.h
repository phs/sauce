#ifndef SAUCE_SAUCE_INTERNAL_KEY_H_
#define SAUCE_SAUCE_INTERNAL_KEY_H_

#include <sauce/memory.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

/**
 * A complete specification of a dependency request.
 */
template<typename Iface_>
struct Key {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Unnamed Name;

  /**
   * Note Normalized is not Iface, but Named<Iface, Unnamed>.
   *
   * They are logically equivalent, but have different TypeIds.  Where it is ambiguous, we use
   * the normalized version.
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

#endif // SAUCE_SAUCE_INTERNAL_KEY_H_
