# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /snap/cmake/1390/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1390/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/karan/slambook/Sophus_LieGroups

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/karan/slambook/Sophus_LieGroups/b

# Include any dependencies generated for this target.
include CMakeFiles/useSophus.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/useSophus.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/useSophus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/useSophus.dir/flags.make

CMakeFiles/useSophus.dir/useSophus.o: CMakeFiles/useSophus.dir/flags.make
CMakeFiles/useSophus.dir/useSophus.o: /home/karan/slambook/Sophus_LieGroups/useSophus.cpp
CMakeFiles/useSophus.dir/useSophus.o: CMakeFiles/useSophus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/karan/slambook/Sophus_LieGroups/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/useSophus.dir/useSophus.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/useSophus.dir/useSophus.o -MF CMakeFiles/useSophus.dir/useSophus.o.d -o CMakeFiles/useSophus.dir/useSophus.o -c /home/karan/slambook/Sophus_LieGroups/useSophus.cpp

CMakeFiles/useSophus.dir/useSophus.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/useSophus.dir/useSophus.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karan/slambook/Sophus_LieGroups/useSophus.cpp > CMakeFiles/useSophus.dir/useSophus.i

CMakeFiles/useSophus.dir/useSophus.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/useSophus.dir/useSophus.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karan/slambook/Sophus_LieGroups/useSophus.cpp -o CMakeFiles/useSophus.dir/useSophus.s

# Object files for target useSophus
useSophus_OBJECTS = \
"CMakeFiles/useSophus.dir/useSophus.o"

# External object files for target useSophus
useSophus_EXTERNAL_OBJECTS =

useSophus: CMakeFiles/useSophus.dir/useSophus.o
useSophus: CMakeFiles/useSophus.dir/build.make
useSophus: CMakeFiles/useSophus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/karan/slambook/Sophus_LieGroups/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable useSophus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/useSophus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/useSophus.dir/build: useSophus
.PHONY : CMakeFiles/useSophus.dir/build

CMakeFiles/useSophus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/useSophus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/useSophus.dir/clean

CMakeFiles/useSophus.dir/depend:
	cd /home/karan/slambook/Sophus_LieGroups/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karan/slambook/Sophus_LieGroups /home/karan/slambook/Sophus_LieGroups /home/karan/slambook/Sophus_LieGroups/b /home/karan/slambook/Sophus_LieGroups/b /home/karan/slambook/Sophus_LieGroups/b/CMakeFiles/useSophus.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/useSophus.dir/depend

