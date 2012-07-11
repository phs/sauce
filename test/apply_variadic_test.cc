#include <string>
#include <iostream>
#include <sstream>

#include <gtest/gtest.h>

#include <sauce/memory.h>
#include <sauce/internal/apply_variadic.h>

namespace sauce {
namespace test {

using namespace sauce::internal;

std::string toString(std::string s, int i) {
  std::stringstream buffer;
  buffer << "'" << s << "' '" << i << "'";
  return buffer.str();
}

struct DefaultValueParameters {
  template<typename T, int i, typename Passed>
  struct Parameter {
    T yield(Passed) {
      return T();
    }
  };
};

struct SpecializedParameters {
  template<typename T, int i, typename Passed>
  struct Parameter;

  template<int i, typename Passed>
  struct Parameter<std::string, i, Passed> {
    std::string yield(Passed) {
      return "foobar";
    }
  };

  template<int i, typename Passed>
  struct Parameter<int, i, Passed> {
    int yield(Passed) {
      return 17;
    }
  };
};

TEST(ApplyFunctionTest, shouldCallPassedFunctionWithParametersGeneratedFromPassedType) {
  ASSERT_EQ("'' '0'", applyFunction<DefaultValueParameters>(&toString, 0));
  ASSERT_EQ("'foobar' '17'", applyFunction<SpecializedParameters>(&toString, 0));
}

struct MoreSpecializedParameters {
  template<typename T, int i, typename Passed>
  struct Parameter;

  template<int i>
  struct Parameter<std::string, i, std::string> {
    std::string yield(std::string passed) {
      return passed;
    }
  };

  template<int i, typename Passed>
  struct Parameter<int, i, Passed> {
    int yield(Passed) {
      return i;
    }
  };
};

TEST(ApplyFunctionTest, shouldLetParametersExamineParameterIndexAndPassedValue) {
  std::string passed = "foo";
  ASSERT_EQ("'foo' '1'", applyFunction<MoreSpecializedParameters>(&toString, passed));
}

struct HasVoidToString {
  static std::string asString;

  static void toString(std::string s, int i) {
    std::stringstream buffer;
    buffer << "'" << s << "' '" << i << "'";
    asString = buffer.str();
  }
};

std::string HasVoidToString::asString = "";

TEST(ApplyFunctionTest, shouldCallPassedVoidFunctionWithParametersGeneratedFromPassedType) {
  applyVoidFunction<DefaultValueParameters>(&HasVoidToString::toString, 0);
  ASSERT_EQ("'' '0'", HasVoidToString::asString);

  applyVoidFunction<SpecializedParameters>(&HasVoidToString::toString, 0);
  ASSERT_EQ("'foobar' '17'", HasVoidToString::asString);

  std::string passed = "foo";
  applyVoidFunction<MoreSpecializedParameters>(&HasVoidToString::toString, passed);
  ASSERT_EQ("'foo' '1'", HasVoidToString::asString);
}

struct HasToString {
  std::string toString(std::string s, int i) {
    std::stringstream buffer;
    buffer << "'" << s << "' '" << i << "'";
    return buffer.str();
  }
};

TEST(ApplyMethodTest, shouldCallPassedMethodOnReceiverWithParametersGeneratedFromPassedType) {
  HasToString hasToString;
  ASSERT_EQ("'' '0'", applyMethod<DefaultValueParameters>(hasToString, &HasToString::toString, 0));
  ASSERT_EQ("'foobar' '17'", applyMethod<SpecializedParameters>(hasToString, &HasToString::toString, 0));

  std::string passed = "foo";
  ASSERT_EQ("'foo' '1'", applyMethod<MoreSpecializedParameters>(hasToString, &HasToString::toString, passed));
}

struct ToStringer {
  std::string toString;

  ToStringer(std::string s, int i) {
    std::stringstream buffer;
    buffer << "'" << s << "' '" << i << "'";
    toString = buffer.str();
  }
};

TEST(ApplyConstructorTest, shouldCallConstructorWithParametersGeneratedFromPassedType) {
  typedef ToStringer Ctor (std::string, int);
  typedef std::allocator<int> Allocator;

  sauce::auto_ptr<ToStringer> toStringer(applyConstructor<DefaultValueParameters, Ctor, Allocator>(0));
  ASSERT_EQ("'' '0'", toStringer->toString);

  toStringer.reset(applyConstructor<SpecializedParameters, Ctor, Allocator>(0));
  ASSERT_EQ("'foobar' '17'", toStringer->toString);

  std::string passed = "foo";
  toStringer.reset(applyConstructor<MoreSpecializedParameters, Ctor, Allocator>(passed));
  ASSERT_EQ("'foo' '1'", toStringer->toString);
}

class NoArg {};

TEST(ApplyConstructorTest, shouldInterpretNakedTypesAsNoArgConstructors) {
  typedef std::allocator<int> Allocator;
  sauce::auto_ptr<NoArg> noArg(applyConstructor<DefaultValueParameters, NoArg, Allocator>(0));
}

}
}
