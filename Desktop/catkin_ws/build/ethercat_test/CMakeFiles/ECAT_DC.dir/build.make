# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/mservo/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mservo/catkin_ws/build

# Include any dependencies generated for this target.
include ethercat_test/CMakeFiles/ECAT_DC.dir/depend.make

# Include the progress variables for this target.
include ethercat_test/CMakeFiles/ECAT_DC.dir/progress.make

# Include the compile flags for this target's objects.
include ethercat_test/CMakeFiles/ECAT_DC.dir/flags.make

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o: ethercat_test/CMakeFiles/ECAT_DC.dir/flags.make
ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o: /home/mservo/catkin_ws/src/ethercat_test/src/ecat_dc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mservo/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o"
	cd /home/mservo/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o   -c /home/mservo/catkin_ws/src/ethercat_test/src/ecat_dc.c

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.i"
	cd /home/mservo/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mservo/catkin_ws/src/ethercat_test/src/ecat_dc.c > CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.i

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.s"
	cd /home/mservo/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mservo/catkin_ws/src/ethercat_test/src/ecat_dc.c -o CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.s

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.requires:

.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.requires

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.provides: ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.requires
	$(MAKE) -f ethercat_test/CMakeFiles/ECAT_DC.dir/build.make ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.provides.build
.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.provides

ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.provides.build: ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o


# Object files for target ECAT_DC
ECAT_DC_OBJECTS = \
"CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o"

# External object files for target ECAT_DC
ECAT_DC_EXTERNAL_OBJECTS =

/home/mservo/catkin_ws/devel/lib/libECAT_DC.so: ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o
/home/mservo/catkin_ws/devel/lib/libECAT_DC.so: ethercat_test/CMakeFiles/ECAT_DC.dir/build.make
/home/mservo/catkin_ws/devel/lib/libECAT_DC.so: ethercat_test/CMakeFiles/ECAT_DC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mservo/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library /home/mservo/catkin_ws/devel/lib/libECAT_DC.so"
	cd /home/mservo/catkin_ws/build/ethercat_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ECAT_DC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ethercat_test/CMakeFiles/ECAT_DC.dir/build: /home/mservo/catkin_ws/devel/lib/libECAT_DC.so

.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/build

ethercat_test/CMakeFiles/ECAT_DC.dir/requires: ethercat_test/CMakeFiles/ECAT_DC.dir/src/ecat_dc.c.o.requires

.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/requires

ethercat_test/CMakeFiles/ECAT_DC.dir/clean:
	cd /home/mservo/catkin_ws/build/ethercat_test && $(CMAKE_COMMAND) -P CMakeFiles/ECAT_DC.dir/cmake_clean.cmake
.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/clean

ethercat_test/CMakeFiles/ECAT_DC.dir/depend:
	cd /home/mservo/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mservo/catkin_ws/src /home/mservo/catkin_ws/src/ethercat_test /home/mservo/catkin_ws/build /home/mservo/catkin_ws/build/ethercat_test /home/mservo/catkin_ws/build/ethercat_test/CMakeFiles/ECAT_DC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ethercat_test/CMakeFiles/ECAT_DC.dir/depend
