# Sauce #

A would-be C++ dependency injection framework, written by an old java dev
finally getting around to learning real C++.  You have been warned.

Design is loosely inspired by Google's excellent guice framework.

## The Jist ##

I refer the reader to [guice's documentation](http://code.google.com/docreader/#p=google-guice&s=google-guice&t=Motivation) for an introduction to dependency injection as a concept, and why they might be interested in using it.

In sauce, one defines _bindings_ that map interface types to implementation types.  Each binding is declared in the context of a _module_ which is used to organize and refer to collections of bindings at a time.  Modules may be as simple as a struct.  They may be composed with inheritance, to avoid redundant bindings.

At runtime, one creates an _injector_, which is a class template taking a single module.  One can then ask the injector to _provide_ a value (instance) of a desired type (again supplied as a template parameter) or to _dispose_ of that value when it is no longer needed.  When providing a value, implicit transitive dependencies are provided as well.

Requesting the injector for an unbound type results in a compile error.

Bindings are resolved at compile time to avoid the need for runtime reflection.  Concretely, they are stubbed static member functions with signatures meant to leverage overload resolution rules: thus we trade runtime reflection magic for compile-time template magic.

## Scopes (Warning: Vaporware) ##

A side-effect of using an injector to hide implementation choices from dependents is the discouraged use of stack allocation and the `new` operator for dependencies.  The `new` operator (et. al.) has an additional guarantee past the one ensuring your instance's concrete type: you know the instance you get back is unique, and entirely yours.  This raises the question: will the injector always provide new, successive instances, or will it ever reuse some?

It turns out the most useful answer is "both".  Depending on the context, it may be appropriate to always create new instances upon request, to always share a solitary instance with everyone (such as in the _Singleton_ pattern), or something in between.

Sauce supports _scopes_ to answer this need.  A scope is a logical region of code, similar to a block or critical region.  While within a scope, a participating binding will only ever create a single instance of its bound type: if the dependency is provided more than once, the same instance is reused.  Instances provided during different visits (i.e. leaving and re-entering) to the same scope are ensured to be _different_.

In garbage-collected environments, where dependency injection first gained traction, this kind of scoping was all the life-cycle management that was needed.  Upon exiting a scope the references to its cached instances would be dropped, and the instances themselves would be cleaned up once no dependents were using them.

Obviously, in C++ this isn't good enough.  The obvious thing to do is have scopes own their cached instances, and dispose of them on exit.  The _danger_ is that if we aren't careful we'll dispose of dependencies that other dependents are still holding.  The _annoyance_ is that assuming ownership is draconian: legacy code or 3rd party garbage collectors will want it back.

Keeping scopes in a stack can address the danger.  First, the instance cache within a scope is ordered: when the scope exits, instances are disposed of in reverse cache order.  Secondly, when a scope is entered, it is pushed onto the scope stack, and popped on exit.  Exiting a scope that is not on top generates a runtime error.  This way, all disposals are made in reverse order of the initial provisions, making it impossible to dispose of a dependency of a dependent that is not itself already disposed.

While we're at it, scope re-entrance is a runtime error unless the entering scope happens to already be on top, in which case a counter is bumped.  The counter is decremented on exit, and disposal only occurs when it hits zero and the scope actually comes off the stack.  Thus legal re-entrance is a no-op, except that entrances and exits must be balanced.

In the very likely event that scope names physically manifest as values of some specially named enum in the binding module, it may be possible to spell out the (finite) possible scope stacks _at compile time_.  In that wild free country, illegal scope transitions become compile errors.

TODO: how about giving ownership back to the user for some dependencies?

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
