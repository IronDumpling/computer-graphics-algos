# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/charliechuyue/University/20229/csc317/kinematics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug

# Utility rule file for igl_core.

# Include any custom commands dependencies for this target.
include _deps/libigl-build/CMakeFiles/igl_core.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/libigl-build/CMakeFiles/igl_core.dir/progress.make

igl_core: _deps/libigl-build/CMakeFiles/igl_core.dir/build.make
.PHONY : igl_core

# Rule to build all files generated by this target.
_deps/libigl-build/CMakeFiles/igl_core.dir/build: igl_core
.PHONY : _deps/libigl-build/CMakeFiles/igl_core.dir/build

_deps/libigl-build/CMakeFiles/igl_core.dir/clean:
	cd /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/libigl-build && $(CMAKE_COMMAND) -P CMakeFiles/igl_core.dir/cmake_clean.cmake
.PHONY : _deps/libigl-build/CMakeFiles/igl_core.dir/clean

_deps/libigl-build/CMakeFiles/igl_core.dir/depend:
	cd /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charliechuyue/University/20229/csc317/kinematics /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/libigl-src /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/libigl-build /Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/libigl-build/CMakeFiles/igl_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/libigl-build/CMakeFiles/igl_core.dir/depend

