# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/yihengz/Documents/15-662/asst4_sph

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yihengz/Documents/15-662/asst4_sph

# Include any dependencies generated for this target.
include external/glfw/examples/CMakeFiles/wave.dir/depend.make

# Include the progress variables for this target.
include external/glfw/examples/CMakeFiles/wave.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/examples/CMakeFiles/wave.dir/flags.make

external/glfw/examples/CMakeFiles/wave.dir/wave.c.o: external/glfw/examples/CMakeFiles/wave.dir/flags.make
external/glfw/examples/CMakeFiles/wave.dir/wave.c.o: external/glfw/examples/wave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/examples/CMakeFiles/wave.dir/wave.c.o"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/wave.c.o   -c /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples/wave.c

external/glfw/examples/CMakeFiles/wave.dir/wave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/wave.c.i"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples/wave.c > CMakeFiles/wave.dir/wave.c.i

external/glfw/examples/CMakeFiles/wave.dir/wave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/wave.c.s"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples/wave.c -o CMakeFiles/wave.dir/wave.c.s

external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.requires:

.PHONY : external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.requires

external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.provides: external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.requires
	$(MAKE) -f external/glfw/examples/CMakeFiles/wave.dir/build.make external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.provides.build
.PHONY : external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.provides

external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.provides.build: external/glfw/examples/CMakeFiles/wave.dir/wave.c.o


# Object files for target wave
wave_OBJECTS = \
"CMakeFiles/wave.dir/wave.c.o"

# External object files for target wave
wave_EXTERNAL_OBJECTS =

external/glfw/examples/wave: external/glfw/examples/CMakeFiles/wave.dir/wave.c.o
external/glfw/examples/wave: external/glfw/examples/CMakeFiles/wave.dir/build.make
external/glfw/examples/wave: external/glfw/src/libglfw3.a
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/librt.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libm.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libX11.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libXrandr.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libXinerama.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libXi.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libXcursor.so
external/glfw/examples/wave: /usr/lib/x86_64-linux-gnu/libGL.so
external/glfw/examples/wave: external/glfw/examples/CMakeFiles/wave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable wave"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/examples/CMakeFiles/wave.dir/build: external/glfw/examples/wave

.PHONY : external/glfw/examples/CMakeFiles/wave.dir/build

external/glfw/examples/CMakeFiles/wave.dir/requires: external/glfw/examples/CMakeFiles/wave.dir/wave.c.o.requires

.PHONY : external/glfw/examples/CMakeFiles/wave.dir/requires

external/glfw/examples/CMakeFiles/wave.dir/clean:
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/wave.dir/cmake_clean.cmake
.PHONY : external/glfw/examples/CMakeFiles/wave.dir/clean

external/glfw/examples/CMakeFiles/wave.dir/depend:
	cd /home/yihengz/Documents/15-662/asst4_sph && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples /home/yihengz/Documents/15-662/asst4_sph/external/glfw/examples/CMakeFiles/wave.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/examples/CMakeFiles/wave.dir/depend

