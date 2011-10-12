# Sauce #

A would-be C++ dependency injection framework, written by an old java dev finally getting around to learning real C++.  You have been warned.

The design and name are inspired by Google's excellent Guice framework.

## The Jist ##

I refer the reader to [Guice's documentation](http://code.google.com/docreader/#p=google-guice&s=google-guice&t=Motivation) for an introduction to dependency injection as a concept, and why they might be interested in using it.

In sauce, one defines _bindings_ that map interface types to implementation types.  Each binding is declared in the context of a _module_ which is used to organize and refer to collections of bindings at a time.  Modules may be function pointers, or classes providing a certain `operator()`.  Groups of modules may be used together, to avoid duplicate bindings.

At runtime, one collects desired modules into a _bindings_ object, which produces _injectors_.  One can then ask an injector to _provide_ a value (instance) of a desired type (again supplied as a template parameter.)  When providing a value, implicit transitive dependencies are provided as well.  All values are exchanged with shared pointers (`std::shared_ptr`, `std::tr1::shared_ptr` and `boost::shared_ptr` are supported) and the injector takes care of _disposing_ the value when the smart pointer deletes itself.

Requesting the injector for an unbound type results in a runtime exception.

## Scopes (Warning: Vaporware) ##

A side-effect of using an injector to hide implementation choices from dependents is the discouraged use of stack allocation and the `new` operator for dependencies.  The `new` operator (et. al.) has an additional guarantee past the one ensuring your instance's concrete type: you know the instance you get back is unique, and entirely yours.  This raises the question: will the injector always provide new, successive instances, or will it ever reuse some?

It turns out the most useful answer is "both".  Depending on the context, it may be appropriate to always create new instances upon request, to always share a solitary instance with everyone (such as in the _Singleton_ pattern), or something in between.

Sauce supports _scopes_ to answer this need.  A scope is a logical region of code, similar to a block or critical region.  While within a scope, a participating binding will only ever create a single instance of its bound type: if the dependency is provided more than once, the same instance is reused.  Instances provided during different visits (i.e. leaving and re-entering) to the same scope are ensured to be _different_.

TODO: More thinking, flush out once a prototype of the feature exists.

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
