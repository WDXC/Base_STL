#include "gmock/gmock.h"
#include "gtest/gtest.h"
#include "Compute.h"

using namespace testing;

class Computing : public Test {
	public:
		Compute comptor;
};

TEST_F(Computing, isResultRight) {
	ASSERT_THAT(comptor.AddNumber(), Eq(5));
}

