# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/karan/Slambook

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/karan/Slambook/build

# Include any dependencies generated for this target.
include CPPandCmake/CMakeFiles/helloSLAM.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CPPandCmake/CMakeFiles/helloSLAM.dir/compiler_depend.make

# Include the progress variables for this target.
include CPPandCmake/CMakeFiles/helloSLAM.dir/progress.make

# Include the compile flags for this target's objects.
include CPPandCmake/CMakeFiles/helloSLAM.dir/flags.make

CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o: CPPandCmake/CMakeFiles/helloSLAM.dir/flags.make
CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o: /home/karan/Slambook/CPPandCmake/helloSLAM.cpp
CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o: CPPandCmake/CMakeFiles/helloSLAM.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/karan/Slambook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o"
	cd /home/karan/Slambook/build/CPPandCmake && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o -MF CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o.d -o CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o -c /home/karan/Slambook/CPPandCmake/helloSLAM.cpp

CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/helloSLAM.dir/helloSLAM.cpp.i"
	cd /home/karan/Slambook/build/CPPandCmake && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karan/Slambook/CPPandCmake/helloSLAM.cpp > CMakeFiles/helloSLAM.dir/helloSLAM.cpp.i

CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/helloSLAM.dir/helloSLAM.cpp.s"
	cd /home/karan/Slambook/build/CPPandCmake && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karan/Slambook/CPPandCmake/helloSLAM.cpp -o CMakeFiles/helloSLAM.dir/helloSLAM.cpp.s

# Object files for target helloSLAM
helloSLAM_OBJECTS = \
"CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o"

# External object files for target helloSLAM
helloSLAM_EXTERNAL_OBJECTS =

CPPandCmake/helloSLAM: CPPandCmake/CMakeFiles/helloSLAM.dir/helloSLAM.cpp.o
CPPandCmake/helloSLAM: CPPandCmake/CMakeFiles/helloSLAM.dir/build.make
CPPandCmake/helloSLAM: CPPandCmake/CMakeFiles/helloSLAM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/karan/Slambook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helloSLAM"
	cd /home/karan/Slambook/build/CPPandCmake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloSLAM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CPPandCmake/CMakeFiles/helloSLAM.dir/build: CPPandCmake/helloSLAM
.PHONY : CPPandCmake/CMakeFiles/helloSLAM.dir/build

CPPandCmake/CMakeFiles/helloSLAM.dir/clean:
	cd /home/karan/Slambook/build/CPPandCmake && $(CMAKE_COMMAND) -P CMakeFiles/helloSLAM.dir/cmake_clean.cmake
.PHONY : CPPandCmake/CMakeFiles/helloSLAM.dir/clean

CPPandCmake/CMakeFiles/helloSLAM.dir/depend:
	cd /home/karan/Slambook/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karan/Slambook /home/karan/Slambook/CPPandCmake /home/karan/Slambook/build /home/karan/Slambook/build/CPPandCmake /home/karan/Slambook/build/CPPandCmake/CMakeFiles/helloSLAM.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CPPandCmake/CMakeFiles/helloSLAM.dir/depend
