# -- Boilerplate --
#
# Enable non-recursive builds and register m4 macros.
AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = -I m4 ${ACLOCAL_FLAGS}

# Install location for pkg-config manifest
pkgconfigdir = $(libdir)/pkgconfig

# -- Initialize used variables --
#
# Since different components must share these, all are required to append (+=) to these instead of
# assigning.  Therefore each needs an empty initialization.
check_LIBRARIES =
check_PROGRAMS =
CLEANFILES =
DISTCLEANFILES =
dist_doc_DATA =
EXTRA_DIST =
install_data_hooks =
MAINTAINERCLEANFILES =
MOSTLYCLEANFILES =
nobase_include_HEADERS =
nodist_pkgconfig_DATA = sauce/sauce.pc
SUBDIRS =
TESTS =
TESTS_ENVIRONMENT =
uninstall_hooks =

# Instead of (over)writing local rule definitions, components are required to wrap their work in a
# new rule and append its name to one of these. The actual local rules are at the bottom.
check_locals =
clean_locals =
distclean_locals =
maintainerclean_locals =
mostlyclean_locals =

# Clean up base auto* output
MAINTAINERCLEANFILES += \
  $(PACKAGE_TARNAME)-$(PACKAGE_VERSION).tar.gz \
  aclocal.m4 \
  build-aux/config.guess \
  build-aux/config.rpath \
  build-aux/config.rpath~ \
  build-aux/config.sub \
  build-aux/depcomp \
  build-aux/install-sh \
  build-aux/ltmain.sh \
  build-aux/missing \
  config.h.in~ \
  configure \
  configure.ac~ \
  Makefile.in

# -- Source and Tests --
#

nobase_include_HEADERS += \
  sauce/binder.h \
  sauce/exceptions.h \
  sauce/injector.h \
  sauce/internal/apply_variadic.h \
  sauce/internal/apply_variadic.h.pump \
  sauce/internal/base_injector.h \
  sauce/internal/binding.h \
  sauce/internal/bindings.h \
  sauce/internal/clause.h \
  sauce/internal/disposal_deleter.h \
  sauce/internal/implicit_bindings.h \
  sauce/internal/implicit_provider_binding.h \
  sauce/internal/injector_binding.h \
  sauce/internal/instance_binding.h \
  sauce/internal/key.h \
  sauce/internal/locker_factory.h \
  sauce/internal/memory/boost.h \
  sauce/internal/memory/std.h \
  sauce/internal/memory/tr1.h \
  sauce/internal/method_binding.h \
  sauce/internal/new_binding.h \
  sauce/internal/opaque_binding.h \
  sauce/internal/pending_thrower.h \
  sauce/internal/provider_binding.h \
  sauce/internal/resolved_binding.h \
  sauce/internal/scope_cache.h \
  sauce/internal/self_injector.h \
  sauce/internal/type_id.h \
  sauce/memory.h \
  sauce/modules.h \
  sauce/named.h \
  sauce/provider.h \
  sauce/sauce.h \
  sauce/scopes.h

EXTRA_DIST += \
  sauce/binder.h \
  sauce/exceptions.h \
  sauce/injector.h \
  sauce/internal/apply_variadic.h \
  sauce/internal/apply_variadic.h.pump \
  sauce/internal/base_injector.h \
  sauce/internal/binding.h \
  sauce/internal/bindings.h \
  sauce/internal/clause.h \
  sauce/internal/disposal_deleter.h \
  sauce/internal/implicit_bindings.h \
  sauce/internal/implicit_provider_binding.h \
  sauce/internal/injector_binding.h \
  sauce/internal/instance_binding.h \
  sauce/internal/key.h \
  sauce/internal/locker_factory.h \
  sauce/internal/memory/boost.h \
  sauce/internal/memory/std.h \
  sauce/internal/memory/tr1.h \
  sauce/internal/method_binding.h \
  sauce/internal/new_binding.h \
  sauce/internal/opaque_binding.h \
  sauce/internal/pending_thrower.h \
  sauce/internal/provider_binding.h \
  sauce/internal/resolved_binding.h \
  sauce/internal/scope_cache.h \
  sauce/internal/self_injector.h \
  sauce/internal/type_id.h \
  sauce/memory.h \
  sauce/modules.h \
  sauce/named.h \
  sauce/provider.h \
  sauce/sauce.h \
  sauce/scopes.h \
  test/allocate_with.h \
  test/allocation_test.cc \
  test/apply_variadic_test.cc \
  test/binding_test.cc \
  test/scope_test.cc \
  test/tutorial_test.cc \
  test/type_id_test.cc

TESTS += unittests
check_PROGRAMS += unittests

unittests_CPPFLAGS = \
  -D$(SAUCE_UNIT_TEST_SHARED_PTR) \
  -I$(srcdir) \
  -I$(gtest)/include \
  -I$(gmock)/include

# Drop -ansi as gtest/gmock break it (as caught by cygwin)
unittests_CXXFLAGS = -Wall -Wextra -Werror $(PTHREAD_CFLAGS)

unittests_SOURCES = \
  test/allocation_test.cc \
  test/apply_variadic_test.cc \
  test/binding_test.cc \
  test/scope_test.cc \
  test/tutorial_test.cc \
  test/type_id_test.cc

unittests_LDADD = \
  $(builddir)/libunittest.a

gmock = $(srcdir)/vendor/gmock-1.7.0
gtest = $(gmock)/gtest

check_LIBRARIES += libunittest.a

libunittest_a_CPPFLAGS = \
  -I$(gtest)/include \
  -I$(gmock)/include \
  -I$(gtest) \
  -I$(gmock)

# Override default compiler and linker flags
# Forgive gtest/gmock's warnings
libunittest_a_CXXFLAGS = -w

# You can't extract these paths without breaking distcheck.
libunittest_a_SOURCES = \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-death-test.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-message.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-param-test.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-printers.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-spi.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-test-part.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest-typed-test.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest_pred_impl.h \
  vendor/gmock-1.7.0/gtest/include/gtest/gtest_prod.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-death-test-internal.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-filepath.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-internal.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-linked_ptr.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-param-util-generated.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-param-util.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-port.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-string.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-tuple.h \
  vendor/gmock-1.7.0/gtest/include/gtest/internal/gtest-type-util.h \
  vendor/gmock-1.7.0/gtest/src/gtest-all.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-internal-inl.h \
  vendor/gmock-1.7.0/include/gmock/gmock-actions.h \
  vendor/gmock-1.7.0/include/gmock/gmock-cardinalities.h \
  vendor/gmock-1.7.0/include/gmock/gmock-generated-actions.h \
  vendor/gmock-1.7.0/include/gmock/gmock-generated-function-mockers.h \
  vendor/gmock-1.7.0/include/gmock/gmock-generated-matchers.h \
  vendor/gmock-1.7.0/include/gmock/gmock-generated-nice-strict.h \
  vendor/gmock-1.7.0/include/gmock/gmock-matchers.h \
  vendor/gmock-1.7.0/include/gmock/gmock-more-actions.h \
  vendor/gmock-1.7.0/include/gmock/gmock-spec-builders.h \
  vendor/gmock-1.7.0/include/gmock/gmock.h \
  vendor/gmock-1.7.0/include/gmock/internal/gmock-generated-internal-utils.h \
  vendor/gmock-1.7.0/include/gmock/internal/gmock-internal-utils.h \
  vendor/gmock-1.7.0/include/gmock/internal/gmock-port.h \
  vendor/gmock-1.7.0/src/gmock-all.cc \
  vendor/gmock-1.7.0/src/gmock_main.cc

EXTRA_libunittest_a_SOURCES = \
  vendor/gmock-1.7.0/gtest/src/gtest.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-death-test.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-filepath.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-port.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-printers.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-test-part.cc \
  vendor/gmock-1.7.0/gtest/src/gtest-typed-test.cc \
  vendor/gmock-1.7.0/src/gmock-cardinalities.cc \
  vendor/gmock-1.7.0/src/gmock-internal-utils.cc \
  vendor/gmock-1.7.0/src/gmock-matchers.cc \
  vendor/gmock-1.7.0/src/gmock-spec-builders.cc \
  vendor/gmock-1.7.0/src/gmock.cc

# Prove we're strictly standards compatible, even if gmock/gtest is not.
TESTS += cxx98_pedantic_compilation_test
check_PROGRAMS += cxx98_pedantic_compilation_test

cxx98_pedantic_compilation_test_CPPFLAGS = \
  -D$(SAUCE_UNIT_TEST_SHARED_PTR) \
  -I$(builddir) \
  -I$(srcdir)

cxx98_pedantic_compilation_test_CXXFLAGS = \
  -Wall \
  -Wextra \
  -Werror \
  -pedantic-errors \
  -std=c++98

cxx98_pedantic_compilation_test_SOURCES = \
  test/pedantic_compilation_test.cc

if HAVE_CXX11

TESTS += cxx11_pedantic_compilation_test
check_PROGRAMS += cxx11_pedantic_compilation_test

cxx11_pedantic_compilation_test_CPPFLAGS = \
  -D$(SAUCE_UNIT_TEST_SHARED_PTR) \
  -I$(builddir) \
  -I$(srcdir)

cxx11_pedantic_compilation_test_CXXFLAGS = \
  -Wall \
  -Wextra \
  -Werror \
  -pedantic-errors \
  $(ENABLE_CXX11_FLAGS)

cxx11_pedantic_compilation_test_SOURCES = \
  test/pedantic_compilation_test.cc

endif

# -- Doxygen --
#

include m4/doxygen.am
EXTRA_DIST += Doxyfile

# Only if Doxygen is configured..
if DX_COND_doc

docpkg = $(PACKAGE_TARNAME)-doxy-$(PACKAGE_VERSION).tar.gz

dist_doc_DATA += $(docpkg)

$(docpkg): doxygen-doc
	tar czf - doxygen-doc > $@

install_data_hooks += doxygen-install-data-hook
doxygen-install-data-hook:
	cd $(DESTDIR)$(docdir) && tar xzf $(docpkg)

uninstall_hooks += doxygen-uninstall-hook
doxygen-uninstall-hook:
	cd $(DESTDIR)$(docdir) && rm -rf doxygen-doc

DISTCLEANFILES += $(docpkg)

# Remove it on distclean
distclean_locals += clean-doxygen-doc
clean-doxygen-doc:
	rm -rf doxygen-doc

endif DX_COND_doc

# -- Local rules --
#

# Generate templated headers from their "pump" sources
sauce/internal/apply_variadic.h: sauce/internal/apply_variadic.h.pump
	vendor/pump.py $+

# This must be the last section so that the corrosponding variables have their final values.
check-local: $(check_locals)
clean-local: $(clean_locals)
distclean-local: $(distclean_locals)
install-data-hook: $(install_data_hooks)
maintainer-clean-local: $(maintainerclean_locals)
mostlyclean-local: $(mostlyclean_locals)
uninstall-hook: $(uninstall_hooks)
