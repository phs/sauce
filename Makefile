CPPFLAGS = -Wall -Wextra -Werror -ansi -Iinclude -DSAUCE_STD_TR1_SMART_PTR

HEADER_TEMPLATES = $(shell find include -type f -name "*.pump")
GENERATED_HEADERS = $(patsubst %.pump,%,$(HEADER_TEMPLATES))
HANDMADE_HEADERS = $(shell find include -type f | \
	grep -v -E "`echo $(GENERATED_HEADERS) | tr ' ' '|'`")
HEADERS = $(HANDMADE_HEADERS) $(GENERATED_HEADERS)

# Do not delete generated headers, even though they are make intermediates
.SECONDARY: $(GENERATED_HEADERS)

TEST_SOURCES = $(shell find test -type f -name "*.cc")
TEST_OBJECTS = $(patsubst test/%.cc,build/test/%.o,$(TEST_SOURCES))

UNCRUSTIFY_INPUT = $(HANDMADE_HEADERS) $(TEST_SOURCES)
UNCRUSTIFY_OUTPUT = $(patsubst %,build/uncrustify/%,$(UNCRUSTIFY_INPUT))

all: precommit

precommit: test-style run-cppcheck test

run-uncrustify:
	mkdir -p build/uncrustify
	uncrustify -c uncrustify.cfg --prefix build/uncrustify --suffix '' -l CPP \
		$(UNCRUSTIFY_INPUT)
	echo $(UNCRUSTIFY_INPUT) | tr ' ' '\n' > build/uncrustify-in
	echo $(UNCRUSTIFY_OUTPUT) | tr ' ' '\n' > build/uncrustify-out
	paste build/uncrustify-in build/uncrustify-out > build/uncrustify-in-out

test-style: run-uncrustify
	cat build/uncrustify-in-out |                               \
	xargs -n 2 git diff --exit-code --no-index >/dev/null || (  \
	echo "\nYou have style violations, please run one of:";     \
	echo "  make diff-style\n  make accept-style\n";            \
	false                                                       \
	)

diff-style: run-uncrustify
	cat build/uncrustify-in-out | \
	xargs -n 2 git --no-pager diff --color --no-index | less -FRSX

accept-style: run-uncrustify
	cp -r build/uncrustify/ .

run-cppcheck:
	cppcheck -q --error-exitcode=1 include test

doc: run-doxygen

run-doxygen:
	doxygen

include/%: include/%.pump
	vendor/pump.py $+

build/test/%.o: test/%.cc $(HEADERS)
	mkdir -p build/test
	$(CXX) $(CPPFLAGS) $< -c -o $@

build/tests: $(TEST_OBJECTS)
	mkdir -p build
	$(CXX) $(CPPFLAGS) -lgtest -lgmock -lgmock_main $(TEST_OBJECTS) -o $@

clean:
	rm -rf build/*

distclean: clean

test: build/tests
	build/tests
