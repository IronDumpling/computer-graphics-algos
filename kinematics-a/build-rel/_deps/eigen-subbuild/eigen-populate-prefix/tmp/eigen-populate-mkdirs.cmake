# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-src"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-build"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix/tmp"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix/src"
  "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/charliechuyue/University/20229/csc317/kinematics/build-rel/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp/${subDir}")
endforeach()
