#ifndef SAUCE_INTERNAL_INJECTIONS_PROVIDING_INJECTION_H_
#define SAUCE_INTERNAL_INJECTIONS_PROVIDING_INJECTION_H_

#include <string>

#include <sauce/injector.h>
#include <sauce/memory.h>
#include <sauce/named.h>
#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {
namespace injections {

/**
 * A strategy for satisfying provisions for the given interface.
 */
template<typename Dependency_>
class ProvidingInjection: public InjectorFriend {
  std::string name;

public:

  typedef typename Key<Dependency_>::Normalized Dependency;
  typedef sauce::shared_ptr<ProvidingInjection<Dependency> > InjectionPtr;
  typedef typename Key<Dependency>::Ptr IfacePtr;

  ProvidingInjection():
    name(unnamed()) {}

  /**
   * The dynamic name of this binding.
   */
  std::string getName() const {
    return name;
  }

  /**
   * Set the dynamic name of this binding.
   */
  void setName(std::string name) {
    this->name = name;
  }

  /**
   * Provide an Iface.
   *
   * The strategy used is left to derived types.
   */
  virtual IfacePtr provide(InjectionPtr, InjectorPtr) const = 0;

  /**
   * Establish that further dependencies do not introduce cycles with ones already accumulated.
   *
   * This is Tarjan's algorithm using the call stack.  When a cycle is detected a
   * CircularDependencyException is thrown.
   */
  virtual void validateAcyclic(InjectorPtr, TypeIds &, std::string) const {}

  /**
   * Accept the list of dynamic dependency names this injection was created with.
   */
  virtual void setDynamicDependencyNames(std::vector<std::string> const &) {}

};

}
}

namespace i = ::sauce::internal;
namespace inj = ::sauce::internal::injections;

}

#endif // SAUCE_INTERNAL_INJECTIONS_PROVIDING_INJECTION_H_
