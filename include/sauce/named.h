#ifndef SAUCE_SAUCE_NAMED_H_
#define SAUCE_SAUCE_NAMED_H_

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
};

/**
 * Template specialization when an actual name is used.
 */
template<typename Iface_, typename Name_>
struct DependencyKey<Named<Iface_, Name_> > {
  typedef Iface_ Iface;
  typedef SAUCE_SHARED_PTR<Iface> Ptr;
  typedef Name_ Name;
};

}
}

#endif // ifndef SAUCE_SAUCE_NAMED_H_