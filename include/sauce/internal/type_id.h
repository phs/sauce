#ifndef SAUCE_SAUCE_INTERNAL_TYPE_ID_H_
#define SAUCE_SAUCE_INTERNAL_TYPE_ID_H_

namespace sauce {
namespace internal {

/**
 * An opaque, reflective value representing an arbitrary type.
 *
 * TypeIds are opaque objects that fingerprint possible requests one may make
 * to an UnscopedInjector.  They are values (not types) with a total ordering.  This
 * allows us to do arbitrary binding resolution, but only at runtime.
 *
 * Concretely, they are function pointers: the total ordering is that of the
 * address space.  No RTTI (i.e. typeid) is used.
 */
typedef void (*TypeId)();

/**
 * The template that generates TypeIds.
 */
template<typename Dependency>
void TypeIdFactory() {}

/**
 * A helper that encapsulates getting TypeIds.
 */
template<typename Dependency>
TypeId typeIdOf() {
  return &TypeIdFactory<Dependency>;
}

/**
 * A set of type ids.
 */
typedef std::set<TypeId> TypeIds;

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_TYPE_ID_H_