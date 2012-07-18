#ifndef SAUCE_INTERNAL_SELF_BINDING_H_
#define SAUCE_INTERNAL_SELF_BINDING_H_

#include <sauce/injector.h>
#include <sauce/scopes.h>
#include <sauce/internal/binding.h>

namespace sauce {
namespace internal {

template<typename Dependency>
class SelfBinding: public Binding<Dependency, NoScope> {
  typedef typename Key<Dependency>::Ptr IfacePtr;
  typedef typename SelfBinding<Dependency>::BindingPtr BindingPtr;

  void inject(IfacePtr &, BindingPtr, InjectorPtr) const {}

public:

  SelfBinding():
    Binding<Dependency, NoScope>() {}
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_INTERNAL_SELF_BINDING_H_
