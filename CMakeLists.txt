#--------------------------------------------------------
# The CMakeLists.txt for:
# Author(s):                              spluta
#--------------------------------------------------------
set(PROJ_NAME RustSaw)
set(RUST_DIR rust_saw)

cmake_minimum_required (VERSION 2.8)
project (${PROJ_NAME})

include_directories(${SC_PATH}/include/plugin_interface)
include_directories(${SC_PATH}/include/common)
include_directories(${SC_PATH}/external_libraries/libsndfile/)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_SHARED_MODULE_PREFIX "")
if(APPLE OR WIN32)
set(CMAKE_SHARED_MODULE_SUFFIX ".scx")
endif()


# this part will build the SC plugin
add_library(RustSaw MODULE RustSaw.cpp)

# we need all this stuff to inculde the rust lib file
include_directories ("${PROJECT_BINARY_DIR}")
include_directories ("${PROJECT_SOURCE_DIR}/${RUST_DIR}")

include (ExternalProject)
set_directory_properties (PROPERTIES EP_PREFIX ${PROJECT_BINARY_DIR}/RUST)

add_dependencies(${PROJ_NAME} ${RUST_DIR})

# Since static libraries can't communicate their own dependencies to the linker, we need to
# specify them explicitly, AFTER the static libraries (here, pthread and dl)
# We can ask Cargo for a list of the required dependencies by using the command
# `cargo rustc -- --print native-static-libs`, or by examining the error messages when
# using the `make` command.
TARGET_LINK_LIBRARIES(
  ${PROJ_NAME}
  debug "${PROJECT_SOURCE_DIR}/${RUST_DIR}/target/debug/lib${RUST_DIR}.a"
  optimized "${PROJECT_SOURCE_DIR}/${RUST_DIR}/target/release/lib${RUST_DIR}.a"
  dl
  pthread
)



