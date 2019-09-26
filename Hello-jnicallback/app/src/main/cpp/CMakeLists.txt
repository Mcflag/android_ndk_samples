cmake_minimum_required(VERSION 3.4.1)

add_library(hello-jnicallback SHARED
            hello-jnicallback.c)

target_link_libraries(hello-jnicallback android log)