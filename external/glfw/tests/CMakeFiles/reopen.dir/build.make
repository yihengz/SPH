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
include external/glfw/tests/CMakeFiles/reopen.dir/depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/reopen.dir/flags.make

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: external/glfw/tests/CMakeFiles/reopen.dir/flags.make
external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: external/glfw/tests/reopen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/reopen.c.o   -c /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests/reopen.c

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests/reopen.c > CMakeFiles/reopen.dir/reopen.c.i

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests/reopen.c -o CMakeFiles/reopen.dir/reopen.c.s

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.requires:

.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.requires

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.provides: external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.requires
	$(MAKE) -f external/glfw/tests/CMakeFiles/reopen.dir/build.make external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.provides.build
.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.provides

external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.provides.build: external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o


# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.o"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

external/glfw/tests/reopen: external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o
external/glfw/tests/reopen: external/glfw/tests/CMakeFiles/reopen.dir/build.make
external/glfw/tests/reopen: external/glfw/src/libglfw3.a
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/librt.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libm.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libX11.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libXrandr.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libXinerama.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libXi.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libXcursor.so
external/glfw/tests/reopen: /usr/lib/x86_64-linux-gnu/libGL.so
external/glfw/tests/reopen: external/glfw/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable reopen"
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/reopen.dir/build: external/glfw/tests/reopen

.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/build

external/glfw/tests/CMakeFiles/reopen.dir/requires: external/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o.requires

.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/requires

external/glfw/tests/CMakeFiles/reopen.dir/clean:
	cd /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/reopen.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/clean

external/glfw/tests/CMakeFiles/reopen.dir/depend:
	cd /home/yihengz/Documents/15-662/asst4_sph && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests /home/yihengz/Documents/15-662/asst4_sph/external/glfw/tests/CMakeFiles/reopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/reopen.dir/depend

