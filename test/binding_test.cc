#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

namespace sauce {
namespace test {

struct C {};
struct N {};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  Injector injector(Bindings().createInjector());
  ASSERT_THROW((injector.get<C>()), ::sauce::UnboundException);
}

struct B;

struct A {
  A(SAUCE_SHARED_PTR<B> ) {}
};

struct B {
  B(SAUCE_SHARED_PTR<A> ) {}
};

void CircularModule(sauce::Binder & binder) {
  binder.bind<A>().to<A(B)>();
  binder.bind<B>().to<B(A)>();
}

TEST(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  Injector injector(Bindings().add(&CircularModule).createInjector());
  ASSERT_THROW((injector.get<A>()), ::sauce::CircularDependencyException);
}

void IncompleteModule(sauce::Binder & binder) {
  binder.bind<C>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(
    Bindings().add(&IncompleteModule).createInjector(),
    ::sauce::PartialBindingException);
}

void IncompleteNamedModule(sauce::Binder & binder) {
  binder.bind<A>().named<N>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialNamedBinding) {
  ASSERT_THROW(
    Bindings().add(&IncompleteNamedModule).createInjector(),
    ::sauce::PartialBindingException);
}

}
}