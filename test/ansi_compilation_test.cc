#include <iostream>

#include <sauce/sauce.h>

/**
 * The purpose of this test is to enforce ansi c++ compatibility within the source.
 *
 * It does so by first pulling in all desired includes, instantiating templates and then asserting
 * that it was compiled with -ansi.
 */
int main() {
  #ifdef __STRICT_ANSI__
  return 0;
  #else
  std::cerr << "This file was not compiled with -ansi." << std::endl;
  return 1;
  #endif
}
