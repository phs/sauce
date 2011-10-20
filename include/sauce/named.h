#ifndef SAUCE_SAUCE_NAMED_H_
#define SAUCE_SAUCE_NAMED_H_

namespace sauce {

/**
 * Wrap dependency requests with Named to choose one of several named alternatives.
 */
template<typename Iface, typename Name>
class Named {};

/**
 * The name of all unnamed dependencies.
 */
class Unnamed {};

}

#endif // SAUCE_SAUCE_NAMED_H_
