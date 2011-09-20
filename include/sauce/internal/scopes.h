#ifndef SAUCE_SAUCE_INTERNAL_SCOPES_H_
#define SAUCE_SAUCE_INTERNAL_SCOPES_H_

#include <sauce/module.h>

namespace sauce {
namespace internal {

/**
 * Helper template to detect if a module declares a Scopes type.
 *
 * Yes, I'm aware that boost can do this.  No, I'm not interested in the extra dependency.
 *
 * Shamelessly stolen from http://stackoverflow.com/questions/7235438
 */
template<typename Module>
class DeclaresScopes {
  typedef char yes;
  typedef struct {
    char array[2];
  } no;

  template<typename D>
  static yes test(typename D::Scopes *);

  template<typename D>
  static no test(...);

public:

  static const bool value = sizeof(test<Module>(0)) == sizeof(yes);
};

/**
 * Helper template to hold the Module's resolved Scopes type declaration.
 */
template<typename Module, bool>
class ScopesOrDefault {
public:
  typedef ::sauce::DefaultScopes Type;
};

/**
 * ScopesOrDefault specialization used when the module in fact declares a Scopes type.
 */
template<typename Module>
class ScopesOrDefault<Module, true> {
public:
  typedef typename Module::Scopes Type;
};

/**
 * The traits template itself.
 */
template<typename Module>
class Scopes {
public:
  typedef typename ScopesOrDefault<Module, DeclaresScopes<Module>::value>::Type Type;
};

}
}

#endif // SAUCE_SAUCE_INTERNAL_SCOPES_H_