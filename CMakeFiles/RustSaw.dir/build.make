# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw

# Include any dependencies generated for this target.
include CMakeFiles/RustSaw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RustSaw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RustSaw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RustSaw.dir/flags.make

CMakeFiles/RustSaw.dir/RustSaw.cpp.o: CMakeFiles/RustSaw.dir/flags.make
CMakeFiles/RustSaw.dir/RustSaw.cpp.o: RustSaw.cpp
CMakeFiles/RustSaw.dir/RustSaw.cpp.o: CMakeFiles/RustSaw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RustSaw.dir/RustSaw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RustSaw.dir/RustSaw.cpp.o -MF CMakeFiles/RustSaw.dir/RustSaw.cpp.o.d -o CMakeFiles/RustSaw.dir/RustSaw.cpp.o -c /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RustSaw.cpp

CMakeFiles/RustSaw.dir/RustSaw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RustSaw.dir/RustSaw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RustSaw.cpp > CMakeFiles/RustSaw.dir/RustSaw.cpp.i

CMakeFiles/RustSaw.dir/RustSaw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RustSaw.dir/RustSaw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RustSaw.cpp -o CMakeFiles/RustSaw.dir/RustSaw.cpp.s

# Object files for target RustSaw
RustSaw_OBJECTS = \
"CMakeFiles/RustSaw.dir/RustSaw.cpp.o"

# External object files for target RustSaw
RustSaw_EXTERNAL_OBJECTS =

RustSaw.scx: CMakeFiles/RustSaw.dir/RustSaw.cpp.o
RustSaw.scx: CMakeFiles/RustSaw.dir/build.make
RustSaw.scx: rust_saw/target/release/librust_saw.a
RustSaw.scx: CMakeFiles/RustSaw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module RustSaw.scx"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RustSaw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RustSaw.dir/build: RustSaw.scx
.PHONY : CMakeFiles/RustSaw.dir/build

CMakeFiles/RustSaw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RustSaw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RustSaw.dir/clean

CMakeFiles/RustSaw.dir/depend:
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles/RustSaw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RustSaw.dir/depend

