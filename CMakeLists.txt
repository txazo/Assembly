cmake_minimum_required(VERSION 3.5)
project(assembly)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        program/a1.asm
        program/a1.c
        program/add.asm
        program/call.asm
        program/data.asm
        program/fibo.asm
        program/fibo.c
        program/if.asm
        program/if.c
        program/jmp.asm
        program/register.asm
        program/ret.asm
        program/stdout.asm
        program/stdout.c
        program/sub.asm
        program/while.asm
        program/while.c)

add_executable(assembly ${SOURCE_FILES})
