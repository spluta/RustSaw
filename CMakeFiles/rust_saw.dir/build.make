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

# Utility rule file for rust_saw.

# Include any custom commands dependencies for this target.
include CMakeFiles/rust_saw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rust_saw.dir/progress.make

CMakeFiles/rust_saw: CMakeFiles/rust_saw-complete

CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-install
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-mkdir
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-download
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-update
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-patch
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-configure
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-build
CMakeFiles/rust_saw-complete: RUST/src/rust_saw-stamp/rust_saw-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'rust_saw'"
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E make_directory /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles/rust_saw-complete
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-done

RUST/src/rust_saw-stamp/rust_saw-build: RUST/src/rust_saw-stamp/rust_saw-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'rust_saw'"
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -P /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-build-Release.cmake
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-build

RUST/src/rust_saw-stamp/rust_saw-configure: RUST/tmp/rust_saw-cfgcmd.txt
RUST/src/rust_saw-stamp/rust_saw-configure: RUST/src/rust_saw-stamp/rust_saw-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'rust_saw'"
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E echo_append
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-configure

RUST/src/rust_saw-stamp/rust_saw-download: RUST/src/rust_saw-stamp/rust_saw-custominfo.txt
RUST/src/rust_saw-stamp/rust_saw-download: RUST/src/rust_saw-stamp/rust_saw-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'rust_saw'"
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E echo_append
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-download

RUST/src/rust_saw-stamp/rust_saw-install: RUST/src/rust_saw-stamp/rust_saw-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'rust_saw'"
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E echo_append
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/rust_saw && /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-install

RUST/src/rust_saw-stamp/rust_saw-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'rust_saw'"
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -Dcfgdir= -P /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/tmp/rust_saw-mkdirs.cmake
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-mkdir

RUST/src/rust_saw-stamp/rust_saw-patch: RUST/src/rust_saw-stamp/rust_saw-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'rust_saw'"
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E echo_append
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-patch

RUST/src/rust_saw-stamp/rust_saw-update: RUST/src/rust_saw-stamp/rust_saw-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'rust_saw'"
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E echo_append
	/opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E touch /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/RUST/src/rust_saw-stamp/rust_saw-update

rust_saw: CMakeFiles/rust_saw
rust_saw: CMakeFiles/rust_saw-complete
rust_saw: RUST/src/rust_saw-stamp/rust_saw-build
rust_saw: RUST/src/rust_saw-stamp/rust_saw-configure
rust_saw: RUST/src/rust_saw-stamp/rust_saw-download
rust_saw: RUST/src/rust_saw-stamp/rust_saw-install
rust_saw: RUST/src/rust_saw-stamp/rust_saw-mkdir
rust_saw: RUST/src/rust_saw-stamp/rust_saw-patch
rust_saw: RUST/src/rust_saw-stamp/rust_saw-update
rust_saw: CMakeFiles/rust_saw.dir/build.make
.PHONY : rust_saw

# Rule to build all files generated by this target.
CMakeFiles/rust_saw.dir/build: rust_saw
.PHONY : CMakeFiles/rust_saw.dir/build

CMakeFiles/rust_saw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rust_saw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rust_saw.dir/clean

CMakeFiles/rust_saw.dir/depend:
	cd /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw /Users/spluta1/Documents/SC/SuperColliderBuild/rust_saw/CMakeFiles/rust_saw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rust_saw.dir/depend

