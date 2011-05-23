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

## Dependency Ownership (Warning: Vaporware) ##

In garbage-collected environments, where dependency injection first gained traction, the life-cycle management of provided dependencies is fairly simple.  After all dependents of a given dependency have been garbage-collected, no outstanding references to the dependency would be left, and it would itself be collected.

In non-managed environments such as C++ this is obviously not true: we need to think about how dependencies are cleaned up once they are no longer needed.  Bindings expose a `dispose` method (accessible through the Injector) which knows _how_ to clean up a dependency once it is no longer needed.  Now it is up to us to supply the _who_ and _when_.

In C++ tradition these answers are provided by designating the _ownership_ of the dependency.  A dependency has a single owner who has the (possibly not exclusive) privilege of using the dependency, and the responsibility of disposing of it at a time of its choosing.

There are occasions where it would be useful to let the dependent own its dependencies (such as unalterable legacy code.)  However, the majority of the time it is more convenient to let the injector transparently dispose of dependencies, just as it transparently provided them.  In this sense the dependent usually does _not_ own its dependencies.

Dependencies are provided transitively, and they are disposed of transitively (in reverse order) as well.  Thus ownership is also transitive: when the owner of a dependent disposes of it, it also implicitly disposes of its dependencies.  The original owner therefore determines when these dependencies are disposed of: it is their owner as well.

Readers who have been paying attention may notice this requires either client code co-operation, or some hidden state.  How shall the disposal logic recall what dependencies were initially injected?  It cannot ask the injector, which may provide new instances (but see scopes below.)  It must either ask the disposed dependent or recall them from their initial injection.

TODO: So which is it?

## Scopes (Warning: Vaporware) ##

A side-effect of using an injector to hide implementation choices from dependents is the discouraged use of stack allocation and the `new` operator for dependencies.  The `new` operator (et. al.) has an additional guarantee past the one ensuring your instance's concrete type: you know the instance you get back is unique, and entirely yours.  This raises the question: will the injector always provide new, successive instances, or will it ever reuse some?

It turns out the most useful answer is "both".  Depending on the context, it may be appropriate to always create new instances upon request, to always share a solitary instance with everyone (such as in the _Singleton_ pattern), or something in between.

Sauce supports _scopes_ to answer this need.  A scope is a logical region of code, similar to a block or critical region.  While within a scope, a participating binding will only ever create a single instance of its bound type: if the dependency is provided more than once, the same instance is reused.  Instances provided during different visits (i.e. leaving and re-entering) to the same scope are ensured to be _different_.

TODO: More thinking, sort out after ownership is sorted.

## Wishlist ##

* Circular dependency detection
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
