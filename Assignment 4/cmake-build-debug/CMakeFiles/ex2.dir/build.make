# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\JI\2018SU\VG101\h4\Assignment 4"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/ex2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ex2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ex2.dir/flags.make

CMakeFiles/ex2.dir/ex2.c.obj: CMakeFiles/ex2.dir/flags.make
CMakeFiles/ex2.dir/ex2.c.obj: ../ex2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ex2.dir/ex2.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ex2.dir\ex2.c.obj   -c "D:\JI\2018SU\VG101\h4\Assignment 4\ex2.c"

CMakeFiles/ex2.dir/ex2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ex2.dir/ex2.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\JI\2018SU\VG101\h4\Assignment 4\ex2.c" > CMakeFiles\ex2.dir\ex2.c.i

CMakeFiles/ex2.dir/ex2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ex2.dir/ex2.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\JI\2018SU\VG101\h4\Assignment 4\ex2.c" -o CMakeFiles\ex2.dir\ex2.c.s

CMakeFiles/ex2.dir/ex2.c.obj.requires:

.PHONY : CMakeFiles/ex2.dir/ex2.c.obj.requires

CMakeFiles/ex2.dir/ex2.c.obj.provides: CMakeFiles/ex2.dir/ex2.c.obj.requires
	$(MAKE) -f CMakeFiles\ex2.dir\build.make CMakeFiles/ex2.dir/ex2.c.obj.provides.build
.PHONY : CMakeFiles/ex2.dir/ex2.c.obj.provides

CMakeFiles/ex2.dir/ex2.c.obj.provides.build: CMakeFiles/ex2.dir/ex2.c.obj


# Object files for target ex2
ex2_OBJECTS = \
"CMakeFiles/ex2.dir/ex2.c.obj"

# External object files for target ex2
ex2_EXTERNAL_OBJECTS =

ex2.exe: CMakeFiles/ex2.dir/ex2.c.obj
ex2.exe: CMakeFiles/ex2.dir/build.make
ex2.exe: CMakeFiles/ex2.dir/linklibs.rsp
ex2.exe: CMakeFiles/ex2.dir/objects1.rsp
ex2.exe: CMakeFiles/ex2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ex2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ex2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ex2.dir/build: ex2.exe

.PHONY : CMakeFiles/ex2.dir/build

CMakeFiles/ex2.dir/requires: CMakeFiles/ex2.dir/ex2.c.obj.requires

.PHONY : CMakeFiles/ex2.dir/requires

CMakeFiles/ex2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ex2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ex2.dir/clean

CMakeFiles/ex2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\JI\2018SU\VG101\h4\Assignment 4" "D:\JI\2018SU\VG101\h4\Assignment 4" "D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug" "D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug" "D:\JI\2018SU\VG101\h4\Assignment 4\cmake-build-debug\CMakeFiles\ex2.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ex2.dir/depend
