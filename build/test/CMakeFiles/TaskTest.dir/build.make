# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aizaki/workspace/timetrack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aizaki/workspace/timetrack/build

# Include any dependencies generated for this target.
include test/CMakeFiles/TaskTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/TaskTest.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TaskTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TaskTest.dir/flags.make

test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o: test/CMakeFiles/TaskTest.dir/flags.make
test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o: ../test/TaskTest.cpp
test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o: test/CMakeFiles/TaskTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aizaki/workspace/timetrack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o"
	cd /home/aizaki/workspace/timetrack/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o -MF CMakeFiles/TaskTest.dir/TaskTest.cpp.o.d -o CMakeFiles/TaskTest.dir/TaskTest.cpp.o -c /home/aizaki/workspace/timetrack/test/TaskTest.cpp

test/CMakeFiles/TaskTest.dir/TaskTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TaskTest.dir/TaskTest.cpp.i"
	cd /home/aizaki/workspace/timetrack/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aizaki/workspace/timetrack/test/TaskTest.cpp > CMakeFiles/TaskTest.dir/TaskTest.cpp.i

test/CMakeFiles/TaskTest.dir/TaskTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TaskTest.dir/TaskTest.cpp.s"
	cd /home/aizaki/workspace/timetrack/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aizaki/workspace/timetrack/test/TaskTest.cpp -o CMakeFiles/TaskTest.dir/TaskTest.cpp.s

# Object files for target TaskTest
TaskTest_OBJECTS = \
"CMakeFiles/TaskTest.dir/TaskTest.cpp.o"

# External object files for target TaskTest
TaskTest_EXTERNAL_OBJECTS =

test/TaskTest: test/CMakeFiles/TaskTest.dir/TaskTest.cpp.o
test/TaskTest: test/CMakeFiles/TaskTest.dir/build.make
test/TaskTest: src/libtask.a
test/TaskTest: test/CMakeFiles/TaskTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aizaki/workspace/timetrack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TaskTest"
	cd /home/aizaki/workspace/timetrack/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TaskTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TaskTest.dir/build: test/TaskTest
.PHONY : test/CMakeFiles/TaskTest.dir/build

test/CMakeFiles/TaskTest.dir/clean:
	cd /home/aizaki/workspace/timetrack/build/test && $(CMAKE_COMMAND) -P CMakeFiles/TaskTest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TaskTest.dir/clean

test/CMakeFiles/TaskTest.dir/depend:
	cd /home/aizaki/workspace/timetrack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aizaki/workspace/timetrack /home/aizaki/workspace/timetrack/test /home/aizaki/workspace/timetrack/build /home/aizaki/workspace/timetrack/build/test /home/aizaki/workspace/timetrack/build/test/CMakeFiles/TaskTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TaskTest.dir/depend
