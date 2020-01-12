# Build root for organic dump client project #

CMake Build Command:
cmake .. -Dprotobuf_BUILD_TESTS=off

CMake Build Command for RPI:
cmake .. -Dprotobuf_BUILD_TESTS=off -DCMAKE_TOOLCHAIN_FILE=../CMakeToolchain.txt

Server mysql username: root
Server mysql password: mysql4Plants&Things
PlantsAndThings database: plantsandthings

Server mysql username: trevor
Server mysql password: <nothing>

Mysql 8 Password: rootMysqlPassword
