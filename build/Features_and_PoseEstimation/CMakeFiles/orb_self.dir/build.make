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
include Features_and_PoseEstimation/CMakeFiles/orb_self.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Features_and_PoseEstimation/CMakeFiles/orb_self.dir/compiler_depend.make

# Include the progress variables for this target.
include Features_and_PoseEstimation/CMakeFiles/orb_self.dir/progress.make

# Include the compile flags for this target's objects.
include Features_and_PoseEstimation/CMakeFiles/orb_self.dir/flags.make

Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o: Features_and_PoseEstimation/CMakeFiles/orb_self.dir/flags.make
Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o: /home/karan/Slambook/Features_and_PoseEstimation/orb_self.cpp
Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o: Features_and_PoseEstimation/CMakeFiles/orb_self.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/karan/Slambook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o"
	cd /home/karan/Slambook/build/Features_and_PoseEstimation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o -MF CMakeFiles/orb_self.dir/orb_self.cpp.o.d -o CMakeFiles/orb_self.dir/orb_self.cpp.o -c /home/karan/Slambook/Features_and_PoseEstimation/orb_self.cpp

Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/orb_self.dir/orb_self.cpp.i"
	cd /home/karan/Slambook/build/Features_and_PoseEstimation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karan/Slambook/Features_and_PoseEstimation/orb_self.cpp > CMakeFiles/orb_self.dir/orb_self.cpp.i

Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/orb_self.dir/orb_self.cpp.s"
	cd /home/karan/Slambook/build/Features_and_PoseEstimation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karan/Slambook/Features_and_PoseEstimation/orb_self.cpp -o CMakeFiles/orb_self.dir/orb_self.cpp.s

# Object files for target orb_self
orb_self_OBJECTS = \
"CMakeFiles/orb_self.dir/orb_self.cpp.o"

# External object files for target orb_self
orb_self_EXTERNAL_OBJECTS =

Features_and_PoseEstimation/orb_self: Features_and_PoseEstimation/CMakeFiles/orb_self.dir/orb_self.cpp.o
Features_and_PoseEstimation/orb_self: Features_and_PoseEstimation/CMakeFiles/orb_self.dir/build.make
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_gapi.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_stitching.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_alphamat.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_aruco.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_bgsegm.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_bioinspired.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_ccalib.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudabgsegm.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudafeatures2d.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudaobjdetect.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudastereo.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_dnn_objdetect.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_dnn_superres.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_dpm.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_face.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_freetype.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_fuzzy.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_hfs.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_img_hash.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_intensity_transform.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_line_descriptor.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_mcc.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_quality.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_rapid.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_reg.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_rgbd.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_saliency.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_signal.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_stereo.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_structured_light.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_superres.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_surface_matching.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_tracking.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_videostab.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_wechat_qrcode.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_xfeatures2d.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_xobjdetect.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_xphoto.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_shape.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_highgui.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_datasets.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_plot.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_text.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_ml.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_phase_unwrapping.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudacodec.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_videoio.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudaoptflow.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudalegacy.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudawarping.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_optflow.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_ximgproc.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_video.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_objdetect.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_calib3d.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_dnn.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_features2d.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_flann.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_photo.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudaimgproc.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudafilters.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_imgproc.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudaarithm.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_core.so.4.10.0
Features_and_PoseEstimation/orb_self: /usr/local/lib/libopencv_cudev.so.4.10.0
Features_and_PoseEstimation/orb_self: Features_and_PoseEstimation/CMakeFiles/orb_self.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/karan/Slambook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable orb_self"
	cd /home/karan/Slambook/build/Features_and_PoseEstimation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orb_self.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Features_and_PoseEstimation/CMakeFiles/orb_self.dir/build: Features_and_PoseEstimation/orb_self
.PHONY : Features_and_PoseEstimation/CMakeFiles/orb_self.dir/build

Features_and_PoseEstimation/CMakeFiles/orb_self.dir/clean:
	cd /home/karan/Slambook/build/Features_and_PoseEstimation && $(CMAKE_COMMAND) -P CMakeFiles/orb_self.dir/cmake_clean.cmake
.PHONY : Features_and_PoseEstimation/CMakeFiles/orb_self.dir/clean

Features_and_PoseEstimation/CMakeFiles/orb_self.dir/depend:
	cd /home/karan/Slambook/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karan/Slambook /home/karan/Slambook/Features_and_PoseEstimation /home/karan/Slambook/build /home/karan/Slambook/build/Features_and_PoseEstimation /home/karan/Slambook/build/Features_and_PoseEstimation/CMakeFiles/orb_self.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Features_and_PoseEstimation/CMakeFiles/orb_self.dir/depend

