# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.20.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(glad-populate NONE)

# Pass through things we've already detected in the main project to avoid
# paying the cost of redetecting them again in ExternalProject_Add()
set(GIT_EXECUTABLE [==[/usr/bin/git]==])
set(GIT_VERSION_STRING [==[2.37.1 (Apple Git-137.1)]==])
set_property(GLOBAL PROPERTY _CMAKE_FindGit_GIT_EXECUTABLE_VERSION
  [==[/usr/bin/git;2.37.1 (Apple Git-137.1)]==]
)


include(ExternalProject)
ExternalProject_Add(glad-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/libigl/libigl-glad.git" "GIT_TAG" "09b4969c56779f7ddf8e6176ec1873184aec890f"
                    SOURCE_DIR          "/Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/glad-src"
                    BINARY_DIR          "/Users/charliechuyue/University/20229/csc317/kinematics/cmake-build-debug/_deps/glad-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


