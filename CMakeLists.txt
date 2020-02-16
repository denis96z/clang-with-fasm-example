cmake_minimum_required(VERSION 3.15)
project(test_asm C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_COMPILER clang)

add_custom_target(libmagic
        fasm magic.asm lib/libmagic.a
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(test_asm main.c)

add_dependencies(test_asm libmagic)
target_link_libraries(test_asm "${CMAKE_CURRENT_LIST_DIR}/lib/libmagic.a")
