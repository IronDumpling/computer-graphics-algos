# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/charliechuyue/University/20229/csc317/raster-images

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/charliechuyue/University/20229/csc317/raster-images/build

# Include any dependencies generated for this target.
include CMakeFiles/raster.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/raster.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/raster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raster.dir/flags.make

CMakeFiles/raster.dir/main.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/main.cpp.o: ../main.cpp
CMakeFiles/raster.dir/main.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raster.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/main.cpp.o -MF CMakeFiles/raster.dir/main.cpp.o.d -o CMakeFiles/raster.dir/main.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/main.cpp

CMakeFiles/raster.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/main.cpp > CMakeFiles/raster.dir/main.cpp.i

CMakeFiles/raster.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/main.cpp -o CMakeFiles/raster.dir/main.cpp.s

CMakeFiles/raster.dir/src/demosaic.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/demosaic.cpp.o: ../src/demosaic.cpp
CMakeFiles/raster.dir/src/demosaic.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/raster.dir/src/demosaic.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/demosaic.cpp.o -MF CMakeFiles/raster.dir/src/demosaic.cpp.o.d -o CMakeFiles/raster.dir/src/demosaic.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/demosaic.cpp

CMakeFiles/raster.dir/src/demosaic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/demosaic.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/demosaic.cpp > CMakeFiles/raster.dir/src/demosaic.cpp.i

CMakeFiles/raster.dir/src/demosaic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/demosaic.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/demosaic.cpp -o CMakeFiles/raster.dir/src/demosaic.cpp.s

CMakeFiles/raster.dir/src/desaturate.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/desaturate.cpp.o: ../src/desaturate.cpp
CMakeFiles/raster.dir/src/desaturate.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/raster.dir/src/desaturate.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/desaturate.cpp.o -MF CMakeFiles/raster.dir/src/desaturate.cpp.o.d -o CMakeFiles/raster.dir/src/desaturate.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/desaturate.cpp

CMakeFiles/raster.dir/src/desaturate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/desaturate.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/desaturate.cpp > CMakeFiles/raster.dir/src/desaturate.cpp.i

CMakeFiles/raster.dir/src/desaturate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/desaturate.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/desaturate.cpp -o CMakeFiles/raster.dir/src/desaturate.cpp.s

CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o: ../src/hsv_to_rgb.cpp
CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o -MF CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o.d -o CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/hsv_to_rgb.cpp

CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/hsv_to_rgb.cpp > CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.i

CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/hsv_to_rgb.cpp -o CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.s

CMakeFiles/raster.dir/src/hue_shift.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/hue_shift.cpp.o: ../src/hue_shift.cpp
CMakeFiles/raster.dir/src/hue_shift.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/raster.dir/src/hue_shift.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/hue_shift.cpp.o -MF CMakeFiles/raster.dir/src/hue_shift.cpp.o.d -o CMakeFiles/raster.dir/src/hue_shift.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/hue_shift.cpp

CMakeFiles/raster.dir/src/hue_shift.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/hue_shift.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/hue_shift.cpp > CMakeFiles/raster.dir/src/hue_shift.cpp.i

CMakeFiles/raster.dir/src/hue_shift.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/hue_shift.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/hue_shift.cpp -o CMakeFiles/raster.dir/src/hue_shift.cpp.s

CMakeFiles/raster.dir/src/over.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/over.cpp.o: ../src/over.cpp
CMakeFiles/raster.dir/src/over.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/raster.dir/src/over.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/over.cpp.o -MF CMakeFiles/raster.dir/src/over.cpp.o.d -o CMakeFiles/raster.dir/src/over.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/over.cpp

CMakeFiles/raster.dir/src/over.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/over.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/over.cpp > CMakeFiles/raster.dir/src/over.cpp.i

CMakeFiles/raster.dir/src/over.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/over.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/over.cpp -o CMakeFiles/raster.dir/src/over.cpp.s

CMakeFiles/raster.dir/src/reflect.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/reflect.cpp.o: ../src/reflect.cpp
CMakeFiles/raster.dir/src/reflect.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/raster.dir/src/reflect.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/reflect.cpp.o -MF CMakeFiles/raster.dir/src/reflect.cpp.o.d -o CMakeFiles/raster.dir/src/reflect.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/reflect.cpp

CMakeFiles/raster.dir/src/reflect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/reflect.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/reflect.cpp > CMakeFiles/raster.dir/src/reflect.cpp.i

CMakeFiles/raster.dir/src/reflect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/reflect.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/reflect.cpp -o CMakeFiles/raster.dir/src/reflect.cpp.s

CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o: ../src/rgb_to_gray.cpp
CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o -MF CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o.d -o CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_gray.cpp

CMakeFiles/raster.dir/src/rgb_to_gray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/rgb_to_gray.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_gray.cpp > CMakeFiles/raster.dir/src/rgb_to_gray.cpp.i

CMakeFiles/raster.dir/src/rgb_to_gray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/rgb_to_gray.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_gray.cpp -o CMakeFiles/raster.dir/src/rgb_to_gray.cpp.s

CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o: ../src/rgb_to_hsv.cpp
CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o -MF CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o.d -o CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_hsv.cpp

CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_hsv.cpp > CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.i

CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/rgb_to_hsv.cpp -o CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.s

CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o: ../src/rgba_to_rgb.cpp
CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o -MF CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o.d -o CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/rgba_to_rgb.cpp

CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/rgba_to_rgb.cpp > CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.i

CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/rgba_to_rgb.cpp -o CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.s

CMakeFiles/raster.dir/src/rotate.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/rotate.cpp.o: ../src/rotate.cpp
CMakeFiles/raster.dir/src/rotate.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/raster.dir/src/rotate.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/rotate.cpp.o -MF CMakeFiles/raster.dir/src/rotate.cpp.o.d -o CMakeFiles/raster.dir/src/rotate.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/rotate.cpp

CMakeFiles/raster.dir/src/rotate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/rotate.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/rotate.cpp > CMakeFiles/raster.dir/src/rotate.cpp.i

CMakeFiles/raster.dir/src/rotate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/rotate.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/rotate.cpp -o CMakeFiles/raster.dir/src/rotate.cpp.s

CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o: ../src/simulate_bayer_mosaic.cpp
CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o -MF CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o.d -o CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/simulate_bayer_mosaic.cpp

CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/simulate_bayer_mosaic.cpp > CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.i

CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/simulate_bayer_mosaic.cpp -o CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.s

CMakeFiles/raster.dir/src/write_ppm.cpp.o: CMakeFiles/raster.dir/flags.make
CMakeFiles/raster.dir/src/write_ppm.cpp.o: ../src/write_ppm.cpp
CMakeFiles/raster.dir/src/write_ppm.cpp.o: CMakeFiles/raster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/raster.dir/src/write_ppm.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raster.dir/src/write_ppm.cpp.o -MF CMakeFiles/raster.dir/src/write_ppm.cpp.o.d -o CMakeFiles/raster.dir/src/write_ppm.cpp.o -c /Users/charliechuyue/University/20229/csc317/raster-images/src/write_ppm.cpp

CMakeFiles/raster.dir/src/write_ppm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raster.dir/src/write_ppm.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/charliechuyue/University/20229/csc317/raster-images/src/write_ppm.cpp > CMakeFiles/raster.dir/src/write_ppm.cpp.i

CMakeFiles/raster.dir/src/write_ppm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raster.dir/src/write_ppm.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/charliechuyue/University/20229/csc317/raster-images/src/write_ppm.cpp -o CMakeFiles/raster.dir/src/write_ppm.cpp.s

# Object files for target raster
raster_OBJECTS = \
"CMakeFiles/raster.dir/main.cpp.o" \
"CMakeFiles/raster.dir/src/demosaic.cpp.o" \
"CMakeFiles/raster.dir/src/desaturate.cpp.o" \
"CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o" \
"CMakeFiles/raster.dir/src/hue_shift.cpp.o" \
"CMakeFiles/raster.dir/src/over.cpp.o" \
"CMakeFiles/raster.dir/src/reflect.cpp.o" \
"CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o" \
"CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o" \
"CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o" \
"CMakeFiles/raster.dir/src/rotate.cpp.o" \
"CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o" \
"CMakeFiles/raster.dir/src/write_ppm.cpp.o"

# External object files for target raster
raster_EXTERNAL_OBJECTS =

raster: CMakeFiles/raster.dir/main.cpp.o
raster: CMakeFiles/raster.dir/src/demosaic.cpp.o
raster: CMakeFiles/raster.dir/src/desaturate.cpp.o
raster: CMakeFiles/raster.dir/src/hsv_to_rgb.cpp.o
raster: CMakeFiles/raster.dir/src/hue_shift.cpp.o
raster: CMakeFiles/raster.dir/src/over.cpp.o
raster: CMakeFiles/raster.dir/src/reflect.cpp.o
raster: CMakeFiles/raster.dir/src/rgb_to_gray.cpp.o
raster: CMakeFiles/raster.dir/src/rgb_to_hsv.cpp.o
raster: CMakeFiles/raster.dir/src/rgba_to_rgb.cpp.o
raster: CMakeFiles/raster.dir/src/rotate.cpp.o
raster: CMakeFiles/raster.dir/src/simulate_bayer_mosaic.cpp.o
raster: CMakeFiles/raster.dir/src/write_ppm.cpp.o
raster: CMakeFiles/raster.dir/build.make
raster: CMakeFiles/raster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable raster"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raster.dir/build: raster
.PHONY : CMakeFiles/raster.dir/build

CMakeFiles/raster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raster.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raster.dir/clean

CMakeFiles/raster.dir/depend:
	cd /Users/charliechuyue/University/20229/csc317/raster-images/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/charliechuyue/University/20229/csc317/raster-images /Users/charliechuyue/University/20229/csc317/raster-images /Users/charliechuyue/University/20229/csc317/raster-images/build /Users/charliechuyue/University/20229/csc317/raster-images/build /Users/charliechuyue/University/20229/csc317/raster-images/build/CMakeFiles/raster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raster.dir/depend

