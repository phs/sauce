#include <string>
#include <stdexcept>

#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using ::testing::Sequence;
using ::testing::Return;

using ::sauce::Binder;
using ::sauce::Named;

namespace sauce {
namespace test {

class Bound {};

void BoundModule(Binder & binder) {
  binder.bind<Bound>().to<Bound()>();
}

TEST(BindingTest, shouldProvideBoundDependenciesAndTheirProvidersToo) {
  sauce::shared_ptr<Injector> injector(Modules().add(&BoundModule).createInjector());

  // We can get an instance, or a provider
  sauce::shared_ptr<Bound> explicitlyBound = injector->get<Bound>();
  sauce::shared_ptr<Provider<Bound> > provider = injector->get<Provider<Bound> >();
}

TEST(BindingTest, shouldProvideExplicitlyRequestedSmartPointers) {
  sauce::shared_ptr<Injector> injector(Modules().add(&BoundModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<sauce::shared_ptr<Bound> >();
}

class BoundModuleAsClass: public ::sauce::AbstractModule {
  void configure() const {
    bind<Bound>().to<Bound()>();
  }

public:

  void doubleDispatch(Modules & modules) {
    modules.add(*this);
  }
};

TEST(BindingTest, shouldProvideConvenienceBaseClassForModules) {
  BoundModuleAsClass moduleAsClass;
  sauce::shared_ptr<Injector> injector(Modules().add(moduleAsClass).createInjector());
  sauce::shared_ptr<Bound> explicitlyBound = injector->get<Bound>();
}

TEST(BindingTest, shouldLetClassModulesAddThemselvesEasily) {
  BoundModuleAsClass moduleAsClass;
  Modules modules;
  moduleAsClass.doubleDispatch(modules);
  sauce::shared_ptr<Injector> injector(modules.createInjector());
  sauce::shared_ptr<Bound> explicitlyBound = injector->get<Bound>();
}

void ForgotTheParensModule(Binder & binder) {
  binder.bind<Bound>().to<Bound>();
}

TEST(BindingTest, shouldInterpretNonFunctionTypesAsNoArgumentConstructors) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ForgotTheParensModule).createInjector());

  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<Provider<Bound> > provider = injector->get<Provider<Bound> >();
}

class PureVirtual {
public:
  virtual std::string says() = 0;
};

class PureVirtualImpl: public PureVirtual {
public:
  std::string says() {
    return "impl!";
  }
};

class NeedsPureVirtual {
public:
  sauce::shared_ptr<PureVirtual> pure;
  explicit NeedsPureVirtual(sauce::shared_ptr<PureVirtual> pure):
    pure(pure) {}
};

void UnnamedPureVirtualModule(Binder & binder) {
  binder.bind<PureVirtual>().to<PureVirtualImpl()>();
  binder.bind<NeedsPureVirtual>().to<NeedsPureVirtual(PureVirtual &)>();
}

/**
 * Ensure a work-around exists for a wart I introduce while abusing syntax.
 *
 * Sauce uses virtually no macros.  So, the injected signatures such as
 * NeedsPureVirtual(PureVirtual &) above are actual language objects.  Specifically they are
 * function types.  However, some function types are illegal, such as those that pass by value
 * uncopyable objects (such as instances of a pure virtual interface by value.)
 *
 * Notice this only affects unnamed dependencies, since the Named<> type wrapper otherwise
 * protects us.
 *
 * Sauce doesn't really care too much about the types of injected dependencies in this sense,
 * since it's going to actually pass in everything as smart pointers anyway.  The choice of using
 * bare types is a convenience to the user, to keep bindings as uncluttered as possible.
 *
 * Therefore, let's abuse the system a little further.  Anywhere an injected type is needed, it
 * can be named either as itself, or as a reference to itself (as in PureVirtual & above).  If Sauce
 * sees any reference types in this way, it will simply pull the reference modifier off (via a
 * certain template specialization) and treat it as if the & was never there.
 *
 * I don't feel guilty about this altering of the space of possible bound types, since (smart)
 * pointers to reference types are illegal anyway.
 */
TEST(BindingTest, shouldAllowBindingUnnamedPureVirtualDependenciesByReference) {
  sauce::shared_ptr<Injector> injector(Modules().add(&UnnamedPureVirtualModule).createInjector());
  EXPECT_EQ("impl!", (injector->get<NeedsPureVirtual>()->pure->says()));
}

class CustomBuilt {};

class CustomBuiltProvider: public AbstractProvider<CustomBuilt> {
public:
  CustomBuilt * provide() {
    return new CustomBuilt();
  }

  void dispose(CustomBuilt * customBuilt) {
    delete customBuilt;
  }
};

void ProviderModule(Binder & binder) {
  binder.bind<CustomBuilt>().toProvider<CustomBuiltProvider()>();
}

TEST(BindingTest, shouldProvideDependenciesBoundToProvidersAndTheProvidersToo) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ProviderModule).createInjector());

  // We can get an instance, or a provider
  sauce::shared_ptr<CustomBuilt> customBuilt = injector->get<CustomBuilt>();
  sauce::shared_ptr<Provider<CustomBuilt> > provider = injector->get<Provider<CustomBuilt> >();
}

void ForgotTheParensProviderModule(Binder & binder) {
  binder.bind<CustomBuilt>().toProvider<CustomBuiltProvider>();
}

TEST(BindingTest, shouldInterpretNonFunctionProviderTypesAsNoArgumentProviderConstructors) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ForgotTheParensProviderModule).createInjector());

  sauce::shared_ptr<CustomBuilt> customBuilt = injector->get<CustomBuilt>();
  sauce::shared_ptr<Provider<CustomBuilt> > customBuiltProvider = injector->get<Provider<CustomBuilt> >();
  sauce::shared_ptr<CustomBuilt> explicitlyProvided = customBuiltProvider->get();
}

class Unbound {};

TEST(BindingTest, shouldThrowExceptionWhenGettingAnUnboundIface) {
  sauce::shared_ptr<Injector> injector(Modules().createInjector());
  ASSERT_THROW(injector->get<Unbound>(), ::sauce::UnboundException);
}

TEST(BindingTest, shouldImplicitlyBindTheInjectorItself) {
  sauce::shared_ptr<Injector> expected = Modules().createInjector();
  sauce::shared_ptr<Injector> actual = expected->get<Injector>();
  ASSERT_EQ(expected, actual);
}

class HasSetterIface {
public:
  virtual sauce::shared_ptr<Bound> getBound() = 0;
};

class HasSetter: public HasSetterIface {
public:
  sauce::shared_ptr<Bound> bound;

  HasSetter():
    bound() {}

  void setBound(sauce::shared_ptr<Bound> bound) {
    this->bound = bound;
  }

  sauce::shared_ptr<Bound> getBound() {
    return bound;
  }
};

class NeedsAHasSetter {
public:
  sauce::shared_ptr<HasSetterIface> hasSetterIface;

  NeedsAHasSetter(sauce::shared_ptr<HasSetterIface> hasSetterIface):
    hasSetterIface(hasSetterIface) {}
};

void SetterModule(Binder & binder) {
  binder.bind<Bound>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().toMethod(&HasSetter::setBound);

  binder.bind<HasSetterIface>().to<HasSetter()>();
  binder.bind<HasSetter>().to<HasSetter()>();
  binder.bind<NeedsAHasSetter>().to<NeedsAHasSetter(HasSetter)>();
}

TEST(BindingTest, shouldInjectBoundSettersOnUserSuppliedValues) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);

  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  // Equal since Bound is a singleton
  ASSERT_EQ(bound, hasSetter->getBound());
}

TEST(BindingTest, shouldProvideAndInjectSetters) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<HasSetter> hasSetter = injector->get<HasSetter>();
  ASSERT_EQ(bound, hasSetter->getBound());
}

TEST(BindingTest, shouldProvideIfacesAndInjectSettersOnImpls) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<HasSetterIface> hasSetterIface = injector->get<HasSetterIface>();
  ASSERT_EQ(bound, hasSetterIface->getBound());
}

TEST(BindingTest, shouldInjectSettersTransitively) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<NeedsAHasSetter> needsAHasSetter = injector->get<NeedsAHasSetter>();
  ASSERT_EQ(bound, needsAHasSetter->hasSetterIface->getBound());
}

class HasSetterProvider: public AbstractProvider<HasSetter> {
public:
  HasSetter * provide() {
    return new HasSetter();
  }

  void dispose(HasSetter * hasSetter) {
    delete hasSetter;
  }
};

void ProviderSetterModule(Binder & binder) {
  binder.bind<Bound>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().toMethod(&HasSetter::setBound);
  binder.bind<HasSetter>().toProvider<HasSetterProvider()>();
}

TEST(BindingTest, shouldInjectSettersOnValuesFromExplicitProviders) {
  sauce::shared_ptr<Injector> injector(Modules().add(&ProviderSetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<HasSetter> hasSetter = injector->get<HasSetter>();
  ASSERT_EQ(bound, hasSetter->getBound());
}

class Dog;

class Tail {
public:
  Tail(sauce::shared_ptr<Dog>) {}
};

class Dog {
public:
  Dog(sauce::shared_ptr<Tail>) {}
};

void CircularModule(Binder & binder) {
  binder.bind<Tail>().in<SingletonScope>().to<Tail(Dog)>();
  binder.bind<Dog>().in<SingletonScope>().to<Dog(Tail)>();
}

TEST(BindingTest, shouldThrowExceptionWhenResolvingCircularDependency) {
  sauce::shared_ptr<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW(injector->get<Tail>(), ::sauce::CircularDependencyException);
}

TEST(BindingTest, shouldThrowExceptionWhenEagerlyInjectingCircularDependency) {
  sauce::shared_ptr<Injector> injector(Modules().add(&CircularModule).createInjector());
  ASSERT_THROW(injector->eagerlyInject<SingletonScope>(), ::sauce::CircularDependencyException);
}

class IncompletelyBound {};

void IncompleteModule(Binder & binder) {
  binder.bind<IncompletelyBound>() /* to ...? */;
}

TEST(BindingTest, shouldThrowExceptionOnPartialBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteModule).createInjector(),
    ::sauce::PartialBindingException);
}

class Animal {
public:
  virtual std::string says() = 0;
};

class Cat: public Animal {
public:
  std::string says() { return "Meow"; }
};

class LieutenantShinysides {};
class Fish: public Animal {
public:
  std::string says() { return "Blub blub"; }
};

class Meatloaf {};
class Cow: public Animal {
public:
  std::string says() { return "Moo"; }
};

class CowProvider: public AbstractProvider<Animal> {
public:
  Animal * provide() {
    return new Cow();
  }

  void dispose(Animal * cow) {
    delete cow;
  }
};

class Bird: public Animal {
public:
  std::string says() { return "Cheep cheep"; }
};

class Pond {
public:
  sauce::shared_ptr<Animal> animal;

  Pond(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

class BirdCage {
public:
  sauce::shared_ptr<Animal> animal;

  BirdCage(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<LieutenantShinysides>().to<Fish()>();
  binder.bind<Animal>().named<Meatloaf>().toProvider<CowProvider()>();
  binder.bind<Animal>().named("tweety").to<Bird()>();

  binder.bind<Pond>().to<Pond(Named<Animal, LieutenantShinysides>)>();
  binder.bind<BirdCage>().to<BirdCage(Animal &)>().naming(0, "tweety");
}

TEST(BindingTest, shouldProvidedNamedDependencies) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  EXPECT_EQ("Meow",         (injector->get<Animal>()->says()));
  EXPECT_EQ("Blub blub",    (injector->get<Animal, LieutenantShinysides>()->says()));
  EXPECT_EQ("Moo",          (injector->get<Named<Animal, Meatloaf> >()->says()));
  EXPECT_EQ("Cheep cheep",  (injector->get<Animal>("tweety")->says()));

  EXPECT_EQ("Blub blub",    (injector->get<Pond>()->animal->says()));
  EXPECT_EQ("Cheep cheep",  (injector->get<BirdCage>()->animal->says()));
}

TEST(BindingTest, shouldProvidedNamedDependencyProviders) {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  sauce::shared_ptr<Provider<Animal> > animalProvider = injector->get<Provider<Animal> >();
  EXPECT_EQ("Meow", animalProvider->get()->says());

  sauce::shared_ptr<Provider<Named<Animal, LieutenantShinysides> > > namedImplicitProvider =
    injector->get<Provider<Named<Animal, LieutenantShinysides> > >();
  EXPECT_EQ("Blub blub", namedImplicitProvider->get()->says());

  sauce::shared_ptr<Provider<Named<Animal, Meatloaf> > > namedExplicitProvider =
    injector->get<Provider<Named<Animal, Meatloaf> > >();
  EXPECT_EQ("Moo", namedExplicitProvider->get()->says());

  sauce::shared_ptr<Provider<Animal> > dynamicallyNamedProvider =
    injector->get<Provider<Animal> >("tweety");
  EXPECT_EQ("Cheep cheep", dynamicallyNamedProvider->get()->says());
}

void BirdDynamicModule(Binder & binder) {
  binder.bind<Animal>().named("tweety").to<Bird()>();
}

void CatDynamicModule(Binder & binder) {
  binder.bind<Animal>().named("sylvester").to<Cat()>();
}

TEST(BindingTest, shouldProvidedDynamicallyNamedDependenciesAcrossModules) {
  Modules modules;
  modules.add(&BirdDynamicModule).add(&CatDynamicModule);
  sauce::shared_ptr<Injector> injector(modules.createInjector());

  EXPECT_EQ("Cheep cheep", (injector->get<Animal>("tweety")->says()));
  EXPECT_EQ("Meow", (injector->get<Animal>("sylvester")->says()));
}

void DynamicallyNamedBindingWithADependencyModule(Binder & binder) {
  binder.bind<Animal>().to<Bird()>();
  binder.bind<BirdCage>().named("golden").to<BirdCage(Animal &)>();
}

TEST(BindingTest, shouldProvideDynamicallyNamedRequestsThatHaveDependencies) {
  Modules modules;
  modules.add(&DynamicallyNamedBindingWithADependencyModule);
  sauce::shared_ptr<Injector> injector(modules.createInjector());

  // This does *not* throw UnboundException (this is a regression test.)
  injector->get<BirdCage>("golden");
}

void NamedBindingSetterModule(Binder & binder) {
  binder.bind<Bound>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().named<LieutenantShinysides>().toMethod(&HasSetter::setBound);
}

TEST(BindingTest, shouldAcceptStaticNamesInInject) {
  sauce::shared_ptr<Injector> injector(Modules().add(&NamedBindingSetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();
  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter, LieutenantShinysides>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void StaticallyNamedSetterModule(Binder & binder) {
  binder.bind<Bound>().named<LieutenantShinysides>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().toMethodNaming<void(HasSetter::*) (Named<Bound, LieutenantShinysides>)>(&HasSetter::setBound);
}

TEST(BindingTest, shouldInjectStaticallyNamedDependenciesIntoSetters) {
  sauce::shared_ptr<Injector> injector(Modules().add(&StaticallyNamedSetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound, LieutenantShinysides>();

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void DynamicallyNamedSetterModule(Binder & binder) {
  binder.bind<Bound>().named("General Fishiness").in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().toMethod(&HasSetter::setBound).naming(0, "General Fishiness");
}

TEST(BindingTest, shouldInjectDynamicallyNamedDependenciesIntoSetters) {
  sauce::shared_ptr<Injector> injector(Modules().add(&DynamicallyNamedSetterModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>("General Fishiness");

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void SetterShorthandModule(Binder & binder) {
  binder.bind<Bound>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().setting<Bound>(&HasSetter::setBound);
}

TEST(BindingTest, shouldBindVoidUnarySettersSimply) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SetterShorthandModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>();

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void StaticallyNamedSetterShorthandModule(Binder & binder) {
  binder.bind<Bound>().named<LieutenantShinysides>().in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().setting<Bound, LieutenantShinysides>(&HasSetter::setBound);
}

TEST(BindingTest, shouldBindVoidUnarySettersWithStaticallyNamedDepSimply) {
  sauce::shared_ptr<Injector> injector(Modules().add(&StaticallyNamedSetterShorthandModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound, LieutenantShinysides>();

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void DynamicallyNamedSetterShorthandModule(Binder & binder) {
  binder.bind<Bound>().named("General Fishiness").in<SingletonScope>().to<Bound()>();
  binder.bind<HasSetter>().setting<Bound>(&HasSetter::setBound, "General Fishiness");
}

TEST(BindingTest, shouldBindVoidUnarySettersWithDynamicallyNamedDepSimply) {
  sauce::shared_ptr<Injector> injector(Modules().add(&DynamicallyNamedSetterShorthandModule).createInjector());
  sauce::shared_ptr<Bound> bound = injector->get<Bound>("General Fishiness");

  sauce::shared_ptr<HasSetter> hasSetter(new HasSetter());
  injector->inject<HasSetter>(hasSetter);
  ASSERT_EQ(bound, hasSetter->getBound());
}

void IncompleteNamedModule(Binder & binder) {
  binder.bind<IncompletelyBound>().named<LieutenantShinysides>() /* to ...? */;
}

TEST(BindingTest, shouldThrowExceptionOnPartialNamedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteNamedModule).createInjector(),
    ::sauce::PartialBindingException);
}

void IncompleteScopeModule(Binder & binder) {
  binder.bind<IncompletelyBound>().in<SingletonScope>();
}

TEST(BindingTest, shouldThrowExceptionOnPartialScopedBinding) {
  ASSERT_THROW(
    Modules().add(&IncompleteScopeModule).createInjector(),
    ::sauce::PartialBindingException);
}

class SingletonInstanceModule: public ::sauce::AbstractModule {
  sauce::shared_ptr<Bound> bound;

public:

  SingletonInstanceModule(sauce::shared_ptr<Bound> bound):
    bound(bound) {}

  void configure() const {
    bind<Bound>().toSingleton(bound);
  }
};

TEST(BindingTest, shouldBindSingletonInstances) {
  sauce::shared_ptr<Bound> expected(new Bound());
  ASSERT_NE(static_cast<Bound *>(0), expected.get());

  SingletonInstanceModule module(expected);
  sauce::shared_ptr<Injector> injector(Modules().add(module).createInjector());
  // sauce::shared_ptr<Bound> actual = injector->get<Bound>(); // TODO
  // ASSERT_EQ(expected.get(), actual.get());
}

class StaticallyNamedSingletonInstanceModule: public ::sauce::AbstractModule {
  sauce::shared_ptr<Bound> bound;

public:

  StaticallyNamedSingletonInstanceModule(sauce::shared_ptr<Bound> bound):
    bound(bound) {}

  void configure() const {
    bind<Bound>().named<LieutenantShinysides>().toSingleton(bound);
  }
};

TEST(BindingTest, shouldBindStaticallyNamedSingletonInstances) {
  sauce::shared_ptr<Bound> expected(new Bound());
  ASSERT_NE(static_cast<Bound *>(0), expected.get());

  StaticallyNamedSingletonInstanceModule module(expected);
  sauce::shared_ptr<Injector> injector(Modules().add(module).createInjector());
  // sauce::shared_ptr<Bound> actual = injector->get<Bound, LieutenantShinysides>(); // TODO
  // ASSERT_EQ(expected.get(), actual.get());
}

class DynamicallyNamedSingletonInstanceModule: public ::sauce::AbstractModule {
  sauce::shared_ptr<Bound> bound;

public:

  DynamicallyNamedSingletonInstanceModule(sauce::shared_ptr<Bound> bound):
    bound(bound) {}

  void configure() const {
    bind<Bound>().named("General Fishiness").toSingleton(bound);
  }
};

TEST(BindingTest, shouldBindDynamicallyNamedSingletonInstances) {
  sauce::shared_ptr<Bound> expected(new Bound());
  ASSERT_NE(static_cast<Bound *>(0), expected.get());

  DynamicallyNamedSingletonInstanceModule module(expected);
  sauce::shared_ptr<Injector> injector(Modules().add(module).createInjector());
  // sauce::shared_ptr<Bound> actual = injector->get<Bound>("General Fishiness"); // TODO
  // ASSERT_EQ(expected.get(), actual.get());
}

class SelfInterested: public Bound {
public:
  sauce::weak_ptr<SelfInterested> self;

  SelfInterested():
    self() {}

  /**
   * The existence of this typedef indicates SelfInterested wants a self-pointer injected.
   */
  typedef SelfInterested RequestsSelfInjection;

  /**
   * This is the setter that the self-pointer is injected with.
   *
   * If the typedef exists but the setter does not, it is a compile error.
   *
   * Notice the weak_ptr is over the type idenfied by RequestsSelfInjection.
   */
  void setSelf(sauce::weak_ptr<SelfInterested> self) {
    this->self = self;
  }
};

class SonOfSelfInterested: public SelfInterested {};

void SelfInterestedModule(Binder & binder) {
  binder.bind<SelfInterested>().to<SelfInterested>();
  binder.bind<SonOfSelfInterested>().to<SonOfSelfInterested>();
}

TEST(BindingTest, shouldInjectSelfWeakPointersIfSpecialTypedefExists) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SelfInterestedModule).createInjector());
  sauce::shared_ptr<SelfInterested> selfInterested = injector->get<SelfInterested>();
  ASSERT_EQ(selfInterested, selfInterested->self.lock());
}

TEST(BindingTest, shouldInjectSelfWeakPointersAutomaticallyIfSpecialTypedefIsInherited) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SelfInterestedModule).createInjector());
  sauce::shared_ptr<SonOfSelfInterested> son = injector->get<SonOfSelfInterested>();
  ASSERT_EQ(son, son->self.lock());
}

class SelfInterestedProvider: public AbstractProvider<SelfInterested> {
public:
  SelfInterested * provide() {
    return new SelfInterested();
  }

  void dispose(SelfInterested * selfInterested) {
    delete selfInterested;
  }
};

void SelfInterestedProviderModule(Binder & binder) {
  binder.bind<SelfInterested>().toProvider<SelfInterestedProvider()>();
}

TEST(BindingTest, shouldInjectSelfWeakPointersFromProviders) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SelfInterestedProviderModule).createInjector());
  sauce::shared_ptr<SelfInterested> selfInterested = injector->get<SelfInterested>();
  ASSERT_EQ(selfInterested, selfInterested->self.lock());
}

void SecretlySelfInterestedModule(Binder & binder) {
  binder.bind<Bound>().to<SelfInterested>();
}

TEST(BindingTest, shouldInjectSelfWeakPointersIfOnlyOnConcreteTypeKnownToBinding) {
  sauce::shared_ptr<Injector> injector(Modules().add(&SecretlySelfInterestedModule).createInjector());
  sauce::shared_ptr<Bound> secretlySelfInterested = injector->get<Bound>();
  sauce::shared_ptr<SelfInterested> selfInterested = static_pointer_cast<SelfInterested>(secretlySelfInterested);
  ASSERT_EQ(selfInterested, selfInterested->self.lock());
}

}
}
