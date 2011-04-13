# Sauce #

A would-be C++ dependency injection framework, written by an old java dev
finally getting around to learning real C++.  You have been warned.

Design is loosely inspired by Google's excellent guice framework.

## The Jist ##

    #include <iostream>
    #include <vector>

    using namespace std;

    // Sample types to inject

    class IDependency {};
    class Dependency: public IDependency {};

    class IDependent {};
    class Dependent: public IDependent {
      IDependency & dependency;
    public:
      explicit Dependent(IDependency & dependency): dependency(dependency) {}
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

    struct OneModule: virtual public Module {};

    template<typename I> struct OneModule::Binding<I, IDependency> {
      typedef NewNoArgProvider<I, Dependency> Provider;
    };

    struct AnotherModule: virtual public Module {};

    template<typename I> struct AnotherModule::Binding<I, IDependent> {
      typedef New1ArgProvider<I, Dependent, IDependency> Provider;
    };

    struct MyModule: public OneModule, public AnotherModule {};

    // And main

    int main(int argc, char **argv) {
      typedef vector<string> V;
      V params = V(argv, argv + argc);

      Injector<MyModule> injector;
      IDependency & d1 = injector.get<IDependency>();
      IDependent & d2 = injector.get<IDependent>();

      cout << "Hooray!" << endl;

      return 0;
    }

## Copyright ##

Copyright (c) 2011 Phil Smith. See LICENSE for details.
