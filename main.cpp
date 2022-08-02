#include "gmock/gmock.h"
#include "Compute.h"
#include "Test/Test.cpp"

int main(int argc, char** argv) {
	testing::InitGoogleMock(&argc, argv);
	return RUN_ALL_TESTS();
}
