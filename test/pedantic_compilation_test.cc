#include <iostream>

#include <sauce/sauce.h>

/**
 * The purpose of this test is to enforce c++ standards compatibility within the source.
 *
 * It does so by first pulling in all desired includes, instantiating templates and then
 * asserting that it was compiled with __STRICT_ANSI__.
 */

using ::sauce::AbstractProvider;
using ::sauce::Binder;
using ::sauce::Injector;
using ::sauce::Modules;
using ::sauce::Named;
using ::sauce::Provider;

class Animal {
public:
  virtual std::string says() = 0;
  virtual ~Animal() {}
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

class Pond {
public:
  sauce::shared_ptr<Animal> animal;

  Pond(sauce::shared_ptr<Animal> animal):
    animal(animal) {}
};

void AnimalModule(Binder & binder) {
  binder.bind<Animal>().to<Cat()>();
  binder.bind<Animal>().named<LieutenantShinysides>().to<Fish()>();
  binder.bind<Animal>().named<Meatloaf>().toProvider<CowProvider()>();

  binder.bind<Pond>().to<Pond(Named<Animal, LieutenantShinysides>)>();
}

int main() {
  sauce::shared_ptr<Injector> injector(Modules().add(&AnimalModule).createInjector());

  sauce::shared_ptr<Provider<Animal> > animalProvider = injector->get<Provider<Animal> >();

  sauce::shared_ptr<Provider<Named<Animal, LieutenantShinysides> > > namedImplicitProvider =
    injector->get<Provider<Named<Animal, LieutenantShinysides> > >();

  sauce::shared_ptr<Provider<Named<Animal, Meatloaf> > > namedExplicitProvider =
    injector->get<Provider<Named<Animal, Meatloaf> > >();

  #if defined(_MSC_VER) || defined(__STRICT_ANSI__)
  return 0;
  #else
  std::cerr << "This file was not compiled with a strict standard." << std::endl;
  return 1;
  #endif
}
