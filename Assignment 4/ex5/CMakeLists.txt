cmake_minimum_required(VERSION 3.10)
project(ex5 C)

set(CMAKE_C_STANDARD 99)

add_executable(ex5 main.c sum.c sum.h prod.c prod.h rem.c rem.h quo.c quo.h mpow.c mpow.h)