cmake_minimum_required(VERSION 2.7)

<<<<<<< HEAD
project(hwx C)
=======
project(hwx)
>>>>>>> 39022916768838bf63131674a08e8fc9dbe6c3b3

# Set the C standard to C11
set(CMAKE_C_STANDARD 11)

# Open all warnings and consider warnings as errors
set(CMAKE_C_FLAGS "-Wall -Werror")

# Add executable for different exercises
add_executable(ex1 ex1.c)
add_executable(ex2 ex2.c)
add_executable(ex3 ex3.c)
add_executable(ex4 ex4.c)

