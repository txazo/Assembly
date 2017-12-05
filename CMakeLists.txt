cmake_minimum_required(VERSION 3.5)
project(assembly)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        program/a1.c
        program/if.c)

add_executable(assembly ${SOURCE_FILES})
