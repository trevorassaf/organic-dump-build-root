# Build root for organic dump client project #

CMake Build Command:
cmake .. -Dprotobuf_BUILD_TESTS=off

CMake Build Command for RPI:
cmake .. -Dprotobuf_BUILD_TESTS=off -DCMAKE_TOOLCHAIN_FILE=../CMakeToolchain.txt
