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

      template<typename M>
      struct Injector {
        template<typename T>
        T & get() {
          return provide<T>(M::template binding<Injector<M> >);
        }

      private:

        template<typename T, typename P>
        T & provide(P * (T *)) {
          return P::get(*this);
        }

      };

    }

    // Application bindings

    struct OneModule {
      template<typename I>
      static hoohah::NewNoArgProvider<I, Foo> * binding(IFoo *) {
        return 0;
      }
    };

    struct AnotherModule {
      template<typename I>
      static hoohah::New1ArgProvider<I, Bar, IFoo> * binding(IBar *) {
        return 0;
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
      IFoo & foo = injector.get<IFoo>();
      IBar & bar = injector.get<IBar>();

      cout << "Hooray, " << bar.getFoo().name() << endl;

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
