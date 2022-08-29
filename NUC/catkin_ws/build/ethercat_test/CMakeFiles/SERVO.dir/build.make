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
CMAKE_SOURCE_DIR = /home/nuc/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/catkin_ws/build

# Include any dependencies generated for this target.
include ethercat_test/CMakeFiles/SERVO.dir/depend.make

# Include the progress variables for this target.
include ethercat_test/CMakeFiles/SERVO.dir/progress.make

# Include the compile flags for this target's objects.
include ethercat_test/CMakeFiles/SERVO.dir/flags.make

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o: ethercat_test/CMakeFiles/SERVO.dir/flags.make
ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o: /home/nuc/catkin_ws/src/ethercat_test/src/servo_def.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o"
	cd /home/nuc/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SERVO.dir/src/servo_def.c.o   -c /home/nuc/catkin_ws/src/ethercat_test/src/servo_def.c

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SERVO.dir/src/servo_def.c.i"
	cd /home/nuc/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuc/catkin_ws/src/ethercat_test/src/servo_def.c > CMakeFiles/SERVO.dir/src/servo_def.c.i

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SERVO.dir/src/servo_def.c.s"
	cd /home/nuc/catkin_ws/build/ethercat_test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuc/catkin_ws/src/ethercat_test/src/servo_def.c -o CMakeFiles/SERVO.dir/src/servo_def.c.s

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.requires:

.PHONY : ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.requires

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.provides: ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.requires
	$(MAKE) -f ethercat_test/CMakeFiles/SERVO.dir/build.make ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.provides.build
.PHONY : ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.provides

ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.provides.build: ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o


# Object files for target SERVO
SERVO_OBJECTS = \
"CMakeFiles/SERVO.dir/src/servo_def.c.o"

# External object files for target SERVO
SERVO_EXTERNAL_OBJECTS =

/home/nuc/catkin_ws/devel/lib/libSERVO.so: ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o
/home/nuc/catkin_ws/devel/lib/libSERVO.so: ethercat_test/CMakeFiles/SERVO.dir/build.make
/home/nuc/catkin_ws/devel/lib/libSERVO.so: ethercat_test/CMakeFiles/SERVO.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library /home/nuc/catkin_ws/devel/lib/libSERVO.so"
	cd /home/nuc/catkin_ws/build/ethercat_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SERVO.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ethercat_test/CMakeFiles/SERVO.dir/build: /home/nuc/catkin_ws/devel/lib/libSERVO.so

.PHONY : ethercat_test/CMakeFiles/SERVO.dir/build

ethercat_test/CMakeFiles/SERVO.dir/requires: ethercat_test/CMakeFiles/SERVO.dir/src/servo_def.c.o.requires

.PHONY : ethercat_test/CMakeFiles/SERVO.dir/requires

ethercat_test/CMakeFiles/SERVO.dir/clean:
	cd /home/nuc/catkin_ws/build/ethercat_test && $(CMAKE_COMMAND) -P CMakeFiles/SERVO.dir/cmake_clean.cmake
.PHONY : ethercat_test/CMakeFiles/SERVO.dir/clean

ethercat_test/CMakeFiles/SERVO.dir/depend:
	cd /home/nuc/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/catkin_ws/src /home/nuc/catkin_ws/src/ethercat_test /home/nuc/catkin_ws/build /home/nuc/catkin_ws/build/ethercat_test /home/nuc/catkin_ws/build/ethercat_test/CMakeFiles/SERVO.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ethercat_test/CMakeFiles/SERVO.dir/depend

