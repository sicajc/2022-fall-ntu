# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library

# Include any dependencies generated for this target.
include pointpillars/CMakeFiles/pp_perf.dir/depend.make

# Include the progress variables for this target.
include pointpillars/CMakeFiles/pp_perf.dir/progress.make

# Include the compile flags for this target's objects.
include pointpillars/CMakeFiles/pp_perf.dir/flags.make

pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o: pointpillars/CMakeFiles/pp_perf.dir/flags.make
pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_performance_pointpillars_singlethread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o -c /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_performance_pointpillars_singlethread.cpp

pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.i"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_performance_pointpillars_singlethread.cpp > CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.i

pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.s"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_performance_pointpillars_singlethread.cpp -o CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.s

pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.o: pointpillars/CMakeFiles/pp_perf.dir/flags.make
pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.o: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/time_measure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.o"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pp_perf.dir/test/time_measure.cpp.o -c /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/time_measure.cpp

pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pp_perf.dir/test/time_measure.cpp.i"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/time_measure.cpp > CMakeFiles/pp_perf.dir/test/time_measure.cpp.i

pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pp_perf.dir/test/time_measure.cpp.s"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/time_measure.cpp -o CMakeFiles/pp_perf.dir/test/time_measure.cpp.s

# Object files for target pp_perf
pp_perf_OBJECTS = \
"CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o" \
"CMakeFiles/pp_perf.dir/test/time_measure.cpp.o"

# External object files for target pp_perf
pp_perf_EXTERNAL_OBJECTS =

pointpillars/pp_perf: pointpillars/CMakeFiles/pp_perf.dir/test/test_performance_pointpillars_singlethread.cpp.o
pointpillars/pp_perf: pointpillars/CMakeFiles/pp_perf.dir/test/time_measure.cpp.o
pointpillars/pp_perf: pointpillars/CMakeFiles/pp_perf.dir/build.make
pointpillars/pp_perf: pointpillars/libvitis_ai_library-pointpillars.so.1.3.2
pointpillars/pp_perf: /usr/lib/libopencv_video.so.3.4.3
pointpillars/pp_perf: /usr/lib/libopencv_highgui.so.3.4.3
pointpillars/pp_perf: /usr/lib/libopencv_videoio.so.3.4.3
pointpillars/pp_perf: /usr/lib/libopencv_imgcodecs.so.3.4.3
pointpillars/pp_perf: /usr/lib/libopencv_imgproc.so.3.4.3
pointpillars/pp_perf: /usr/lib/libopencv_core.so.3.4.3
pointpillars/pp_perf: model_config/libvitis_ai_library-model_config.so.1.3.2
pointpillars/pp_perf: /usr/lib/libglog.so.0.4.0
pointpillars/pp_perf: /usr/lib/libgflags.so.2.2.2
pointpillars/pp_perf: /usr/lib/libprotobuf.so
pointpillars/pp_perf: pointpillars/CMakeFiles/pp_perf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable pp_perf"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pp_perf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pointpillars/CMakeFiles/pp_perf.dir/build: pointpillars/pp_perf

.PHONY : pointpillars/CMakeFiles/pp_perf.dir/build

pointpillars/CMakeFiles/pp_perf.dir/clean:
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && $(CMAKE_COMMAND) -P CMakeFiles/pp_perf.dir/cmake_clean.cmake
.PHONY : pointpillars/CMakeFiles/pp_perf.dir/clean

pointpillars/CMakeFiles/pp_perf.dir/depend:
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/CMakeFiles/pp_perf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pointpillars/CMakeFiles/pp_perf.dir/depend
