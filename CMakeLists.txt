cmake_minimum_required(VERSION 3.1)

project(OrganicDumpClient VERSION 1.0)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/build/cmake/find-modules")

add_subdirectory(external/googletest/repo/googletest)

set(GFLAGS_IS_SUBPROJECT TRUE)
set(GFLAGS_NAMESPACE "google")
#set(BUILD_SHARED_LIBS TRUE)
add_subdirectory(external/gflags/repo)
add_subdirectory(external/glog/repo)

add_subdirectory(code/organic-dump-client-application/repo)
add_subdirectory(code/organic-dump-server-application/repo)

add_subdirectory(external/boringssl/repo)
add_subdirectory(external/protobuf/repo/cmake)
