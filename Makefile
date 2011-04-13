GMOCK = vendor/gmock-1.5.0
GTEST = vendor/gmock-1.5.0/gtest

CPPFLAGS = -Iinclude

HEADERS      = $(shell find include -type f -name "*.h")

TEST_SOURCES = $(shell find test    -type f -name "*.cc")
TEST_OBJECTS = \
	$(patsubst test/%.cc,build/%.o,$(TEST_SOURCES)) \
	$(GMOCK)/src/gmock-all.o                        \
	$(GMOCK)/src/gmock_main.o                       \
	$(GTEST)/src/gtest-all.o

all: test

$(GMOCK)/src/gmock-all.o $(GMOCK)/src/gmock_main.o $(GTEST)/src/gtest-all.o:
	cd $(GMOCK) && ./configure && make

build/%.o: test/%.cc $(HEADERS)
	mkdir -p build/sauce
	$(CXX) $(CPPFLAGS) -I$(GMOCK)/include -I$(GTEST)/include $< -c -o $@

build/tests: $(TEST_OBJECTS)
	mkdir -p build/sauce && $(CXX) $(CPPFLAGS) $+ -o $@

clean:
	rm -rf build/*

test: build/tests
	cd build && ./tests
