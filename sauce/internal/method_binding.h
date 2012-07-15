#ifndef SAUCE_INTERNAL_METHOD_BINDING_H_
#define SAUCE_INTERNAL_METHOD_BINDING_H_

#include <sauce/injector.h>
#include <sauce/scopes.h>
#include <sauce/internal/binding.h>
#include <sauce/internal/resolved_binding.h>

namespace sauce {
namespace internal {

template<typename Dependency, typename Method>
class MethodBinding: public Binding<Dependency, NoScope> {
  typedef typename Key<Dependency>::Ptr IfacePtr;

  Method method;

public:

  typedef typename ResolvedBinding<Dependency>::BindingPtr BindingPtr;

  explicit MethodBinding(Method method):
    method(method) {}

  void inject(IfacePtr &, BindingPtr, InjectorPtr) const {}

  void validateAcyclic(InjectorPtr, TypeIds &) const {}
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_METHOD_BINDING_H_
