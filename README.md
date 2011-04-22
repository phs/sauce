# Sauce #

A would-be C++ dependency injection framework, written by an old java dev
finally getting around to learning real C++.  You have been warned.

Design is loosely inspired by Google's excellent guice framework.

## The Jist ##

Here's dependency resolution:

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

    namespace hoohah {

      template<typename I, typename Iface, typename Impl>
      struct NewNoArgProvider {
        static Iface & get(I & injector) {
          return *new Impl();
        };
      };

      template<typename I, typename Iface, typename Impl, typename A1>
      struct New1ArgProvider {
        static Iface & get(I & injector) {
          return *new Impl(injector.template get<A1>());
        };
      };

      template<typename M>
      struct Injector {
        template<typename T>
        T & get() {
          T & (*binding)(Injector<M> &) = M::template binding<Injector<M> >((T *)NULL);
          return binding(*this);
        }
      };

    }

    // Application bindings

    struct OneModule {
      template<typename I>
      static IFoo & (*binding(IFoo *))(I &) {
        return &hoohah::NewNoArgProvider<I, IFoo, Foo>::get;
      }
    };

    struct AnotherModule {
      template<typename I>
      static IBar & (*binding(IBar *))(I &) {
        return &hoohah::New1ArgProvider<I, IBar, Bar, IFoo>::get;
      }
    };

    struct MyModule: public OneModule, public AnotherModule {
      using OneModule::binding;
      using AnotherModule::binding;
    };

    // And main

    int main(int argc, char **argv) {
      typedef vector<string> V;
      V params = V(argv, argv + argc);

      hoohah::Injector<MyModule> injector;
      IFoo & d1 = injector.get<IFoo>();
      IBar & d2 = injector.get<IBar>();

      cout << "Hooray, " << d2.getFoo().name() << endl;

      return 0;
    }

The idea is co-opt C++'s overload resolution to create a set of type bindings that can be wrapped in a class, inherited, and passed around in templates.  Partial or complete class template specialization would be more intuitive, but this unfortunately precludes the possibility of spreading the bindings over multiple namespaces (such as Module subtypes.)

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
