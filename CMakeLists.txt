cmake_minimum_required(VERSION 3.5)
project(assembly)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        nasm/arithmetic.asm
        nasm/arithmetic.c
        nasm/fibo.asm
        nasm/fibo.c
        nasm/if.asm
        nasm/if.c
        nasm/main.asm
        nasm/main.c
        nasm/stdout.c
        nasm/while.asm
        nasm/while.c)

add_executable(assembly ${SOURCE_FILES})
