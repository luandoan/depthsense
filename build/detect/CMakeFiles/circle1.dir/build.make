# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/luan/depthsense/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luan/depthsense/build

# Include any dependencies generated for this target.
include detect/CMakeFiles/circle1.dir/depend.make

# Include the progress variables for this target.
include detect/CMakeFiles/circle1.dir/progress.make

# Include the compile flags for this target's objects.
include detect/CMakeFiles/circle1.dir/flags.make

detect/CMakeFiles/circle1.dir/src/circle1.cpp.o: detect/CMakeFiles/circle1.dir/flags.make
detect/CMakeFiles/circle1.dir/src/circle1.cpp.o: /home/luan/depthsense/src/detect/src/circle1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/luan/depthsense/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object detect/CMakeFiles/circle1.dir/src/circle1.cpp.o"
	cd /home/luan/depthsense/build/detect && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/circle1.dir/src/circle1.cpp.o -c /home/luan/depthsense/src/detect/src/circle1.cpp

detect/CMakeFiles/circle1.dir/src/circle1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/circle1.dir/src/circle1.cpp.i"
	cd /home/luan/depthsense/build/detect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/luan/depthsense/src/detect/src/circle1.cpp > CMakeFiles/circle1.dir/src/circle1.cpp.i

detect/CMakeFiles/circle1.dir/src/circle1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/circle1.dir/src/circle1.cpp.s"
	cd /home/luan/depthsense/build/detect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/luan/depthsense/src/detect/src/circle1.cpp -o CMakeFiles/circle1.dir/src/circle1.cpp.s

detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.requires:
.PHONY : detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.requires

detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.provides: detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.requires
	$(MAKE) -f detect/CMakeFiles/circle1.dir/build.make detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.provides.build
.PHONY : detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.provides

detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.provides.build: detect/CMakeFiles/circle1.dir/src/circle1.cpp.o

# Object files for target circle1
circle1_OBJECTS = \
"CMakeFiles/circle1.dir/src/circle1.cpp.o"

# External object files for target circle1
circle1_EXTERNAL_OBJECTS =

/home/luan/depthsense/devel/lib/detect/circle1: detect/CMakeFiles/circle1.dir/src/circle1.cpp.o
/home/luan/depthsense/devel/lib/detect/circle1: detect/CMakeFiles/circle1.dir/build.make
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libcv_bridge.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libimage_transport.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libmessage_filters.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libclass_loader.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/libPocoFoundation.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libdl.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libroslib.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libroscpp.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/librosconsole.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/liblog4cxx.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/librostime.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/luan/depthsense/devel/lib/detect/circle1: /opt/ros/indigo/lib/libcpp_common.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/luan/depthsense/devel/lib/detect/circle1: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/luan/depthsense/devel/lib/detect/circle1: detect/CMakeFiles/circle1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/luan/depthsense/devel/lib/detect/circle1"
	cd /home/luan/depthsense/build/detect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/circle1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
detect/CMakeFiles/circle1.dir/build: /home/luan/depthsense/devel/lib/detect/circle1
.PHONY : detect/CMakeFiles/circle1.dir/build

detect/CMakeFiles/circle1.dir/requires: detect/CMakeFiles/circle1.dir/src/circle1.cpp.o.requires
.PHONY : detect/CMakeFiles/circle1.dir/requires

detect/CMakeFiles/circle1.dir/clean:
	cd /home/luan/depthsense/build/detect && $(CMAKE_COMMAND) -P CMakeFiles/circle1.dir/cmake_clean.cmake
.PHONY : detect/CMakeFiles/circle1.dir/clean

detect/CMakeFiles/circle1.dir/depend:
	cd /home/luan/depthsense/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luan/depthsense/src /home/luan/depthsense/src/detect /home/luan/depthsense/build /home/luan/depthsense/build/detect /home/luan/depthsense/build/detect/CMakeFiles/circle1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : detect/CMakeFiles/circle1.dir/depend

