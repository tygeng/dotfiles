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
CMAKE_SOURCE_DIR = /home/tony1/Downloads/YouCompleteMe/src/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony1/.vim/bundle/YouCompleteMe/ycm_build

# Utility rule file for copy_testdata.

# Include the progress variables for this target.
include ycm/tests/CMakeFiles/copy_testdata.dir/progress.make

ycm/tests/CMakeFiles/copy_testdata:
	cd /home/tony1/.vim/bundle/YouCompleteMe/ycm_build/ycm/tests && cmake -E copy_directory /home/tony1/Downloads/YouCompleteMe/src/cpp/ycm/tests/testdata /home/tony1/.vim/bundle/YouCompleteMe/ycm_build/ycm/tests/testdata

copy_testdata: ycm/tests/CMakeFiles/copy_testdata
copy_testdata: ycm/tests/CMakeFiles/copy_testdata.dir/build.make
.PHONY : copy_testdata

# Rule to build all files generated by this target.
ycm/tests/CMakeFiles/copy_testdata.dir/build: copy_testdata
.PHONY : ycm/tests/CMakeFiles/copy_testdata.dir/build

ycm/tests/CMakeFiles/copy_testdata.dir/clean:
	cd /home/tony1/.vim/bundle/YouCompleteMe/ycm_build/ycm/tests && $(CMAKE_COMMAND) -P CMakeFiles/copy_testdata.dir/cmake_clean.cmake
.PHONY : ycm/tests/CMakeFiles/copy_testdata.dir/clean

ycm/tests/CMakeFiles/copy_testdata.dir/depend:
	cd /home/tony1/.vim/bundle/YouCompleteMe/ycm_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tony1/Downloads/YouCompleteMe/src/cpp /home/tony1/Downloads/YouCompleteMe/src/cpp/ycm/tests /home/tony1/.vim/bundle/YouCompleteMe/ycm_build /home/tony1/.vim/bundle/YouCompleteMe/ycm_build/ycm/tests /home/tony1/.vim/bundle/YouCompleteMe/ycm_build/ycm/tests/CMakeFiles/copy_testdata.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ycm/tests/CMakeFiles/copy_testdata.dir/depend

