# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joseph/workspace_catkin/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default

# Utility rule file for clean_test_results.

# Include the progress variables for this target.
include CMakeFiles/clean_test_results.dir/progress.make

CMakeFiles/clean_test_results:
	/usr/bin/cmake -E remove_directory /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default/test_results

clean_test_results: CMakeFiles/clean_test_results
clean_test_results: CMakeFiles/clean_test_results.dir/build.make
.PHONY : clean_test_results

# Rule to build all files generated by this target.
CMakeFiles/clean_test_results.dir/build: clean_test_results
.PHONY : CMakeFiles/clean_test_results.dir/build

CMakeFiles/clean_test_results.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clean_test_results.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clean_test_results.dir/clean

CMakeFiles/clean_test_results.dir/depend:
	cd /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/workspace_catkin/src /home/joseph/workspace_catkin/src /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default /home/joseph/workspace_catkin/build-src-Desktop_Qt_5_5_1_GCC_64bit-Default/CMakeFiles/clean_test_results.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clean_test_results.dir/depend

