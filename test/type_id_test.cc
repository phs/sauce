#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/internal/type_id.h>

namespace sauce {
namespace test {

namespace i = ::sauce::internal;

class Foo {};
class Bar {};

class TypeIdTest: public ::testing::Test {
public:
  const i::TypeId fooId;
  const i::TypeId anotherFooId;
  const i::TypeId barId;

  TypeIdTest():
    fooId(i::typeIdOf<Foo>()),
    anotherFooId(i::typeIdOf<Foo>()),
    barId(i::typeIdOf<Bar>()) {}
};


TEST_F(TypeIdTest, shouldConsiderSameTypeIdsEqual) {
  EXPECT_EQ(fooId, anotherFooId);
}

TEST_F(TypeIdTest, shouldConsiderDifferentTypeIdsUnequal) {
  EXPECT_NE(fooId, barId);
}

TEST_F(TypeIdTest, shouldImposeAnOrderOnUnequalTypeIds) {
  EXPECT_TRUE((fooId < barId) || (barId < fooId));
}

}
}
