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
include pointpillars/CMakeFiles/pfn_test.dir/depend.make

# Include the progress variables for this target.
include pointpillars/CMakeFiles/pfn_test.dir/progress.make

# Include the compile flags for this target's objects.
include pointpillars/CMakeFiles/pfn_test.dir/flags.make

pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.o: pointpillars/CMakeFiles/pfn_test.dir/flags.make
pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.o: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_clock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.o"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pfn_test.dir/test/test_clock.cpp.o -c /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_clock.cpp

pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pfn_test.dir/test/test_clock.cpp.i"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_clock.cpp > CMakeFiles/pfn_test.dir/test/test_clock.cpp.i

pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pfn_test.dir/test/test_clock.cpp.s"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/test/test_clock.cpp -o CMakeFiles/pfn_test.dir/test/test_clock.cpp.s

# Object files for target pfn_test
pfn_test_OBJECTS = \
"CMakeFiles/pfn_test.dir/test/test_clock.cpp.o"

# External object files for target pfn_test
pfn_test_EXTERNAL_OBJECTS =

pointpillars/pfn_test: pointpillars/CMakeFiles/pfn_test.dir/test/test_clock.cpp.o
pointpillars/pfn_test: pointpillars/CMakeFiles/pfn_test.dir/build.make
pointpillars/pfn_test: pointpillars/CMakeFiles/pfn_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pfn_test"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pfn_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pointpillars/CMakeFiles/pfn_test.dir/build: pointpillars/pfn_test

.PHONY : pointpillars/CMakeFiles/pfn_test.dir/build

pointpillars/CMakeFiles/pfn_test.dir/clean:
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars && $(CMAKE_COMMAND) -P CMakeFiles/pfn_test.dir/cmake_clean.cmake
.PHONY : pointpillars/CMakeFiles/pfn_test.dir/clean

pointpillars/CMakeFiles/pfn_test.dir/depend:
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/CMakeFiles/pfn_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pointpillars/CMakeFiles/pfn_test.dir/depend
