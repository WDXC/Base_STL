cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_CXX_STANDARD 14)

include_directories(${PROJECT_SOURCE_DIR}/common/
										${PROJECT_SOURCE_DIR}/common/include

)

# 添加对gdb的支持
SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

file(GLOB_RECURSE native_srcs ./*.cpp)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/out/lib)

add_library(Stl STATIC ${native_srcs})

link_directories(${PROJECT_SOURCE_DIR}/common/lib)

target_link_libraries(Stl ${CMAKE_THREAD_LIBS_INIT} -lgmock -lgmock_main -lgtest -lgtest_main -lpthread -lc -lm -lrt)

