cmake_minimum_required(VERSION 3.16)
project(TinyStl)

set(CMAKE_CXX_STANARD 14)

# 添加对gdb的支持
SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

add_subdirectory(src)

include_directories(./common/include)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/out/bin)

add_executable(TinyStl ./main.cpp)

target_link_libraries(TinyStl Stl)
