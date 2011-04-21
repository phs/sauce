# Sauce #

A would-be C++ dependency injection framework, written by an old java dev
finally getting around to learning real C++.  You have been warned.

Design is loosely inspired by Google's excellent guice framework.

## The Jist ##

    #include <iostream>
    #include <vector>

    using namespace std;

    // Sample types to inject

    class IFoo {
    public:
      virtual string name() = 0;
    };

    class Foo: public IFoo {
    public:
      string name() { return "Impl!"; }
    };

    class IBar {
    public:
      virtual IFoo & getFoo() = 0;
    };

    class Bar: public IBar {
      IFoo & dependency;
    public:
      explicit Bar(IFoo & dependency): dependency(dependency) {}
      IFoo & getFoo() { return dependency; }
    };

    // Some hoohah

    template<typename I, typename T>
    struct NewNoArgProvider {
      static T & get(I & injector) {
        return *new T();
      };
    };

    template<typename I, typename T, typename A1>
    struct New1ArgProvider {
      static T & get(I & injector) {
        return *new T(injector.template get<A1>());
      };
    };

    struct Module {
      template<typename I, typename T> struct Binding {};
    };

    template<typename M>
    struct Injector {
      template<typename T>
      T & get() {
        typedef typename M::template Binding<Injector<M>, T>::Provider _Provider;
        return _Provider::get(*this);
      }
    };

    // Application bindings

    struct OneModule: virtual public Module {
      template<typename I> struct Binding<I, IFoo> {
        typedef NewNoArgProvider<I, Foo> Provider;
      };
    };

    struct AnotherModule: virtual public Module {
      template<typename I> struct Binding<I, IBar> {
        typedef New1ArgProvider<I, Bar, IFoo> Provider;
      };
    };

    struct MyModule: public OneModule, public AnotherModule {};

    // And main

    int main(int argc, char **argv) {
      typedef vector<string> V;
      V params = V(argv, argv + argc);

      Injector<MyModule> injector;
      IFoo & d1 = injector.get<IFoo>();
      IBar & d2 = injector.get<IBar>();

      cout << "Hooray, " << d2.getFoo().name() << endl;

      return 0;
    }

## Wishlist ##

* Setter injection
* Named, overloaded bindings and dependencies
* Eager-loaded singletons
* Injectable Providers for lazy resolution
* Implicit bindings implied by bound interfaces or implementations
* On-demand injection for provided instances
* Member field injection (eh)
* Static injection (eh)

## Copyright ##

Copyright (c) 2011 Phil Smith. See LICENSE for details.
