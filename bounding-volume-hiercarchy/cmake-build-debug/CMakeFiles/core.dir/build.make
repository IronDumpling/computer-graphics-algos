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
CMAKE_SOURCE_DIR = /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/core.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/core.dir/flags.make

CMakeFiles/core.dir/src/AABBTree.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/AABBTree.cpp.o: ../src/AABBTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/core.dir/src/AABBTree.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/AABBTree.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree.cpp

CMakeFiles/core.dir/src/AABBTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/AABBTree.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree.cpp > CMakeFiles/core.dir/src/AABBTree.cpp.i

CMakeFiles/core.dir/src/AABBTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/AABBTree.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree.cpp -o CMakeFiles/core.dir/src/AABBTree.cpp.s

CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o: ../src/AABBTree_ray_intersect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree_ray_intersect.cpp

CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree_ray_intersect.cpp > CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.i

CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/AABBTree_ray_intersect.cpp -o CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.s

CMakeFiles/core.dir/src/box_box_intersect.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/box_box_intersect.cpp.o: ../src/box_box_intersect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/core.dir/src/box_box_intersect.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/box_box_intersect.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/box_box_intersect.cpp

CMakeFiles/core.dir/src/box_box_intersect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/box_box_intersect.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/box_box_intersect.cpp > CMakeFiles/core.dir/src/box_box_intersect.cpp.i

CMakeFiles/core.dir/src/box_box_intersect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/box_box_intersect.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/box_box_intersect.cpp -o CMakeFiles/core.dir/src/box_box_intersect.cpp.s

CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o: ../src/find_all_intersecting_pairs_using_AABBTrees.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/find_all_intersecting_pairs_using_AABBTrees.cpp

CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/find_all_intersecting_pairs_using_AABBTrees.cpp > CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.i

CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/find_all_intersecting_pairs_using_AABBTrees.cpp -o CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.s

CMakeFiles/core.dir/src/insert_box_into_box.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/insert_box_into_box.cpp.o: ../src/insert_box_into_box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/core.dir/src/insert_box_into_box.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/insert_box_into_box.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_box_into_box.cpp

CMakeFiles/core.dir/src/insert_box_into_box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/insert_box_into_box.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_box_into_box.cpp > CMakeFiles/core.dir/src/insert_box_into_box.cpp.i

CMakeFiles/core.dir/src/insert_box_into_box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/insert_box_into_box.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_box_into_box.cpp -o CMakeFiles/core.dir/src/insert_box_into_box.cpp.s

CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o: ../src/insert_triangle_into_box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_triangle_into_box.cpp

CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_triangle_into_box.cpp > CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.i

CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/insert_triangle_into_box.cpp -o CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.s

CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o: ../src/nearest_neighbor_brute_force.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/nearest_neighbor_brute_force.cpp

CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/nearest_neighbor_brute_force.cpp > CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.i

CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/nearest_neighbor_brute_force.cpp -o CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.s

CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o: ../src/point_AABBTree_squared_distance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_AABBTree_squared_distance.cpp

CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_AABBTree_squared_distance.cpp > CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.i

CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_AABBTree_squared_distance.cpp -o CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.s

CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o: ../src/point_box_squared_distance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_box_squared_distance.cpp

CMakeFiles/core.dir/src/point_box_squared_distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/point_box_squared_distance.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_box_squared_distance.cpp > CMakeFiles/core.dir/src/point_box_squared_distance.cpp.i

CMakeFiles/core.dir/src/point_box_squared_distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/point_box_squared_distance.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/point_box_squared_distance.cpp -o CMakeFiles/core.dir/src/point_box_squared_distance.cpp.s

CMakeFiles/core.dir/src/ray_intersect_box.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/ray_intersect_box.cpp.o: ../src/ray_intersect_box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/core.dir/src/ray_intersect_box.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/ray_intersect_box.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_box.cpp

CMakeFiles/core.dir/src/ray_intersect_box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/ray_intersect_box.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_box.cpp > CMakeFiles/core.dir/src/ray_intersect_box.cpp.i

CMakeFiles/core.dir/src/ray_intersect_box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/ray_intersect_box.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_box.cpp -o CMakeFiles/core.dir/src/ray_intersect_box.cpp.s

CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o: ../src/ray_intersect_triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle.cpp

CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle.cpp > CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.i

CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle.cpp -o CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.s

CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o: ../src/ray_intersect_triangle_mesh_brute_force.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle_mesh_brute_force.cpp

CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle_mesh_brute_force.cpp > CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.i

CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/ray_intersect_triangle_mesh_brute_force.cpp -o CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.s

CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o: ../src/triangle_triangle_intersection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o -c /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/triangle_triangle_intersection.cpp

CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/triangle_triangle_intersection.cpp > CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.i

CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/src/triangle_triangle_intersection.cpp -o CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.s

# Object files for target core
core_OBJECTS = \
"CMakeFiles/core.dir/src/AABBTree.cpp.o" \
"CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o" \
"CMakeFiles/core.dir/src/box_box_intersect.cpp.o" \
"CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o" \
"CMakeFiles/core.dir/src/insert_box_into_box.cpp.o" \
"CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o" \
"CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o" \
"CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o" \
"CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o" \
"CMakeFiles/core.dir/src/ray_intersect_box.cpp.o" \
"CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o" \
"CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o" \
"CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o"

# External object files for target core
core_EXTERNAL_OBJECTS =

libcore.a: CMakeFiles/core.dir/src/AABBTree.cpp.o
libcore.a: CMakeFiles/core.dir/src/AABBTree_ray_intersect.cpp.o
libcore.a: CMakeFiles/core.dir/src/box_box_intersect.cpp.o
libcore.a: CMakeFiles/core.dir/src/find_all_intersecting_pairs_using_AABBTrees.cpp.o
libcore.a: CMakeFiles/core.dir/src/insert_box_into_box.cpp.o
libcore.a: CMakeFiles/core.dir/src/insert_triangle_into_box.cpp.o
libcore.a: CMakeFiles/core.dir/src/nearest_neighbor_brute_force.cpp.o
libcore.a: CMakeFiles/core.dir/src/point_AABBTree_squared_distance.cpp.o
libcore.a: CMakeFiles/core.dir/src/point_box_squared_distance.cpp.o
libcore.a: CMakeFiles/core.dir/src/ray_intersect_box.cpp.o
libcore.a: CMakeFiles/core.dir/src/ray_intersect_triangle.cpp.o
libcore.a: CMakeFiles/core.dir/src/ray_intersect_triangle_mesh_brute_force.cpp.o
libcore.a: CMakeFiles/core.dir/src/triangle_triangle_intersection.cpp.o
libcore.a: CMakeFiles/core.dir/build.make
libcore.a: CMakeFiles/core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX static library libcore.a"
	$(CMAKE_COMMAND) -P CMakeFiles/core.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/core.dir/build: libcore.a
.PHONY : CMakeFiles/core.dir/build

CMakeFiles/core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/core.dir/clean

CMakeFiles/core.dir/depend:
	cd /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug /Users/charliechuyue/University/20229/csc317/bounding-volume-hierarchy/cmake-build-debug/CMakeFiles/core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/core.dir/depend

