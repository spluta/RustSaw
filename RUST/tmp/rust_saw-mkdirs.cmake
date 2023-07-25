# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/tmp"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src"
  "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp${cfgdir}") # cfgdir has leading slash
endif()
