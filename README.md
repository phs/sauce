# Sauce #

A would-be C++ dependency injection framework, written by an old java dev finally getting around to learning real C++.  You have been warned.

The design and name are inspired by Google's excellent Guice framework.

## The Jist ##

I refer the reader to [Guice's documentation](http://code.google.com/docreader/#p=google-guice&s=google-guice&t=Motivation) for an introduction to dependency injection as a concept, and why they might be interested in using it.

In Sauce, one defines _bindings_ that map interface types to implementation types.  Each binding is declared in the context of a _module_ which is used to organize and refer to collections of bindings at a time.  Modules may be function pointers, or classes providing a certain `operator()`.  Groups of modules may be used together, to avoid duplicate bindings.

At runtime, one collects desired modules into a _bindings_ object, which produces _injectors_.  One can then ask an injector to _provide_ a value (instance) of a desired type (again supplied as a template parameter.)  When providing a value, implicit transitive dependencies are provided as well.  All values are exchanged with shared pointers (`std`, `std::tr1` and `boost` shared pointers are supported) and the injector takes care of _disposing_ the value when the smart pointer deletes itself.

Requesting the injector for an unbound type results in a runtime exception.

## Scopes ##

TODO: scopes have been overhauled, needs rewrite..

A side-effect of using an injector to hide implementation choices from dependents is the discouraged use of stack allocation and the `new` operator for dependencies.  The `new` operator (et. al.) has an additional guarantee past the one ensuring your instance's concrete type: you know the instance you get back is unique, and entirely yours.  This raises the question: will the injector always provide new, successive instances, or will it ever reuse some?

It turns out the most useful answer is "both".  Depending on the context, it may be appropriate to always create new instances upon request, to always share a solitary instance with everyone (such as in the _Singleton_ pattern), or something in between.

Sauce supports _scopes_ to answer this need.  While within a scope, a participating binding will only ever create a single instance of its bound type: if the dependency is provided more than once, the same instance is reused.  To drop dependencies cached this way, one _reenters_ its scope (with a method on the injector.)  Instances provided during different visits to the same scope (i.e. after reentering) are ensured to be _different_ (provided by different invocations of the underlying binding.)

Sometimes it is convenient to force the creation of all dependencies in a given scope (such as the built-in _SingletonScope_.)  This can help programs fail fast, by exposing environmental issues or other problems at start up.  Sauce supports this with _eager loading_ arbitrary scopes (exposed as an injector method.)  

Unlike Guice, Sauce expects the developer to reenter and eagerly load scopes explicitly, at their convenience.  No reentrance or eager loading occurs implicitly.  However, scopes are implicitly and always _entered_: scoped dependencies are always cached, and only created from the underlying bindings on cache miss.

Scopes may be made thread-safe by supplying a locker type and a recursive lockable instance when creating the injector.  Boost/thread's lock\_guard and recursive\_lock are suitable for this purpose.

## Wishlist ##

* ~~Circular dependency detection~~
* Setter injection
* ~~Named, overloaded bindings and dependencies~~
* ~~Eager-loaded singletons~~
* Injectable Providers for lazy resolution
* Implicit bindings implied by bound interfaces or implementations
* On-demand injection for provided instances
* Member field injection (meh)
* Static injection (meh)

## Copyright ##

Copyright (c) 2011 Phil Smith. See LICENSE for details.
