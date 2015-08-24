# Sauce #

A C++ dependency injection framework.

The design and name are inspired by Google's excellent [Guice framework](http://code.google.com/p/google-guice/), but neither Google nor Guice is otherwise affiliated in any way.

## The Gist ##

I refer the reader to [Guice's documentation](http://code.google.com/docreader/#p=google-guice&s=google-guice&t=Motivation) for an introduction to dependency injection as a concept, and why they might be interested in using it.

In Sauce, one defines _bindings_ that map interface types to implementation types.  Each binding is declared in the context of a _module_ which is used to organize and refer to collections of bindings at a time.  Modules may be function pointers, or classes providing a certain `operator()`.  Groups of modules may be used together, to avoid duplicate bindings.

At runtime, one collects desired modules into a _modules_ object, which produces _injectors_.  One can then ask an injector to _provide_ a value (instance) of a desired type (again supplied as a template parameter.)  When providing a value, implicit transitive dependencies are provided as well.  All values are exchanged with shared pointers (`(std|std::tr1|boost)::shared_ptr`s are supported) and the injector takes care of _disposing_ the value when the smart pointer deletes itself.

Requesting the injector for an unbound type results in a runtime exception.  No RTTI is used (but we use a portable, homebrew version of same.)

Sauce is available with a liberal, BSD-ish [license](https://github.com/phs/sauce/blob/master/LICENSE).

## Hacking ##

Development that is not environment-specific is done with [vagrant](
http://www.vagrantup.com/) over [virtualbox](
https://www.virtualbox.org/) or [vmware](http://www.vagrantup.com/vmware):

```bash
$ vagrant up
$ vagrant ssh
vagrant@sauce:~$ cd sauce
vagrant@sauce:~/sauce$ ./configure  # create make files
vagrant@sauce:~/sauce$ make check   # compile and run unit tests
```

## Scopes ##

A side-effect of using an injector to hide implementation choices from dependents is the discouraged use of stack allocation and the `new` operator for dependencies.  The `new` operator (et. al.) has an additional guarantee past the ensuring the instance's concrete type: the instance received is unique, and not shared.  This raises the question: will the injector always provide new, successive instances, or will it ever reuse some?

It turns out the most useful answer is "both".  Depending on the context, it may be appropriate to always create new instances upon request, to always share a solitary instance with everyone (such as in the [_Singleton_](http://en.wikipedia.org/wiki/Singleton_pattern) pattern), or to do something in between.

Sauce supports _scopes_ to answer this need.  While within a scope, a participating binding will only ever create a single instance of its bound type: if the dependency is provided more than once, the same instance is reused.  One enters a scope with the `enter` method on the injector, to receive a _scoped_ injector.  Requests made to this injector will benefit from the open scope.  To leave the scope, stop using the scoped injector (either by simply dropping it on the floor, or by calling `exit` to recover the original.)  The injectors returned from `Modules` instances are created implicitly in `SingletonScope`, which can not be exited (at pain of runtime exception.)

Entered scopes form a stack: entering the `RequestScope` from a `SessionScope` injector will result in an injector that is within both scopes.  Put differently, such an injector will try to provide both `RequestScope` and `SessionScope` dependencies from cache.  They are a stack in the sense that injectors beneath the top are guaranteed to survive those above them.  It is illegal to reenter a scope already on the stack; a runtime exception is thrown.

It is possible (and encouraged!) to reenter a scope many times from a single injector in _parallel_.  For example, one may enter `RequestScope` from the same `SessionScope` injector many times concurrently, to create many contemporary `RequestScope` injectors.  These will all cache `RequestScope` dependencies separately, but share the same `SessionScope` cache.  Such shared scopes are not thread-safe by default, but may be made so by supplying a locker type and a lockable instance when creating the initial, root injector.  [Boost::thread](http://www.boost.org/doc/libs/1_47_0/doc/html/thread.html)'s [`lock_guard`](http://www.boost.org/doc/libs/1_47_0/doc/html/thread/synchronization.html#thread.synchronization.locks.lock_guard) and [`mutex`](http://www.boost.org/doc/libs/1_47_0/doc/html/thread/synchronization.html#thread.synchronization.mutex_types.mutex) are suitable for this purpose.

Sometimes it is convenient to force the creation of all dependencies up front in a given scope (such as singleton scope.)  This can help programs fail fast, by exposing environmental issues or other problems at start up.  Sauce supports this by optionally _eagerly injecting_ arbitrary scopes (with an injector method.)  One may only eagerly inject dependencies in open scopes.

Unlike Guice, Sauce expects the developer to enter and eagerly inject scopes explicitly, at their convenience.  No entrance or eager injection occurs implicitly.

## Further Reading ##

* [The "Tutorial" Test Suite](https://github.com/phs/sauce/blob/master/test/tutorial_test.cc)
* [API Reference](http://phs.github.com/sauce/doxygen-doc/html/)

## Wishlist ##

* ~~Circular dependency detection~~
* ~~Setter injection~~
* ~~Named, overloaded bindings~~
* ~~Eager-loaded singletons~~
* ~~Injectable Providers for lazy resolution~~
* Implicit bindings implied by integration within interfaces or implementations
* ~~On-demand injection for provided instances~~
* Member field injection (meh)
* Static injection (meh)

## Thanks ##

These peeps are amaze for helping make Sauce better!  Buy them all the drink of their choice!

* Casey B.
* Jakub S.
* Markus E.

(If you're up here and want me to tweak/link, make a ticket or otherwise prod me.)

## Copyright ##

Copyright (c) 2011-2012 Phil Smith. See LICENSE for details.
