cmake_minimum_required(VERSION 3.4.1)

# build application's shared lib
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11")

add_library(hello-cdep SHARED
        hello-cdep.cpp)

target_link_libraries(hello-cdep
        android
        log)
# Temporary workaround:
# android.toolchain.cmake does
#  set(CMAKE_SYSTEM_VERSION 1)
# CDep lib binary supports android-23 and above.
set(CMAKE_SYSTEM_VERSION 23)

find_package(cdep-dependencies REQUIRED)
add_all_cdep_dependencies(hello-cdep)
