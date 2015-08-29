AC_INIT([Sauce],[0.10.1],[https://github.com/phs/sauce/issues],[sauce],[https://github.com/phs/sauce/])

# Boilerplate
AC_PREREQ(2.61)
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([1.9 -Wall -Werror foreign])

# Needed programs
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
LT_INIT
AC_PROG_AWK
AC_PROG_CXX
AC_PROG_EGREP
AC_PROG_LIBTOOL
AC_PROG_LN_S
AM_PROG_CC_C_O

# Needed libraries
ACX_PTHREAD     # only needed to run the unit tests

# Optional features

# Detect default shared pointer presence, only for unit tests.
AC_LANG_PUSH([C++])

AC_MSG_CHECKING([for std::shared_ptr])
AC_COMPILE_IFELSE([AC_LANG_PROGRAM(
  [[#include <memory>]]
  [[std::shared_ptr<int> have_shared_ptr;]])
], [
  AC_MSG_RESULT([yes])
  SAUCE_UNIT_TEST_SHARED_PTR=SAUCE_STD_SMART_PTR
], [
  AC_MSG_RESULT([no])

  AC_MSG_CHECKING([for std::tr1::shared_ptr])
  AC_COMPILE_IFELSE([AC_LANG_PROGRAM(
    [[#include <memory>]]
    [[#include <tr1/memory>]]
    [[std::tr1::shared_ptr<int> have_shared_ptr;]])
  ], [
    AC_MSG_RESULT([yes])
    SAUCE_UNIT_TEST_SHARED_PTR=SAUCE_STD_TR1_SMART_PTR
  ], [
    AC_MSG_RESULT([no])
  ])
])

AC_SUBST([SAUCE_UNIT_TEST_SHARED_PTR])

AC_LANG_POP([C++])

# Detect strict C++11, only for pedantic compilation tests
AX_CXX_COMPILE_STDCXX_11(noext,optional)
AM_CONDITIONAL(HAVE_CXX11, test "x$HAVE_CXX11" = "x1")

DX_DOT_FEATURE(ON)
DX_PDF_FEATURE(OFF)
DX_PS_FEATURE(OFF)
DX_INIT_DOXYGEN(AC_PACKAGE_NAME)

# Set default compilation and linking flags
AC_SUBST([AM_CXXFLAGS],"-Wall -Wextra -Werror -pedantic-errors")

# The list of all authored c++ source and header files in the project
AC_SUBST([CC_FILES],[`( cd "$srcdir" && find sauce test -type f -name "*.cc" | tr '\n' ' ' )`])
AC_SUBST([H_FILES],[`( cd "$srcdir" && find sauce test -type f -name "*.h" | tr '\n' ' ' )`])

# Create the generated files
AC_CONFIG_HEADERS([sauce/config.h])
AC_CONFIG_FILES([
  Makefile
  Doxyfile
  sauce/sauce.pc
])

# Actually create the requested files.  This must be the last line.
AC_OUTPUT
