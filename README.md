# Sauce #

A would-be C++ dependency injection framework, written by an old java dev
finally getting around to learning real C++.  You have been warned.

Design is loosely inspired by Google's excellent guice framework.

## The Jist ##

I refer the reader to [guice's documentation](http://code.google.com/docreader/#p=google-guice&s=google-guice&t=Motivation) for an introduction to dependency injection as a concept, and why they might be interested in using it.

In sauce, one defines _bindings_ that map interface types to implementation types.  Each binding is declared in the context of a _module_ which is used to organize and refer to collections of bindings at a time.  Modules may be as simple as a struct.  They may be composed with inheritance, to avoid redundant bindings.

At runtime, one creates an _injector_, which is a class template taking a single module.  One can then ask the injector to _provide_ a value of a desired type (again supplied as a template parameter) or to _dispose_ of that value when it is no longer needed.  When providing a value, implicit transitive dependencies are provided as well.

Requesting the injector for an unbound type results in a compile error.

Bindings are resolved at compile time to avoid the need for runtime reflection.  Concretely, they are stubbed static member functions with signatures meant to leverage overload resolution rules: thus we trade runtime reflection magic for compile-time template magic.

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
