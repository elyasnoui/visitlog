# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\elyas\Documents\GitHub\visitlog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\visitlog.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\visitlog.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\visitlog.dir\flags.make

CMakeFiles\visitlog.dir\main.cpp.obj: CMakeFiles\visitlog.dir\flags.make
CMakeFiles\visitlog.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/visitlog.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\visitlog.dir\main.cpp.obj /FdCMakeFiles\visitlog.dir\ /FS -c C:\Users\elyas\Documents\GitHub\visitlog\main.cpp
<<

CMakeFiles\visitlog.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visitlog.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe > CMakeFiles\visitlog.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\elyas\Documents\GitHub\visitlog\main.cpp
<<

CMakeFiles\visitlog.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visitlog.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\visitlog.dir\main.cpp.s /c C:\Users\elyas\Documents\GitHub\visitlog\main.cpp
<<

CMakeFiles\visitlog.dir\visitor.cpp.obj: CMakeFiles\visitlog.dir\flags.make
CMakeFiles\visitlog.dir\visitor.cpp.obj: ..\visitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/visitlog.dir/visitor.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\visitlog.dir\visitor.cpp.obj /FdCMakeFiles\visitlog.dir\ /FS -c C:\Users\elyas\Documents\GitHub\visitlog\visitor.cpp
<<

CMakeFiles\visitlog.dir\visitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visitlog.dir/visitor.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe > CMakeFiles\visitlog.dir\visitor.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\elyas\Documents\GitHub\visitlog\visitor.cpp
<<

CMakeFiles\visitlog.dir\visitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visitlog.dir/visitor.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\visitlog.dir\visitor.cpp.s /c C:\Users\elyas\Documents\GitHub\visitlog\visitor.cpp
<<

# Object files for target visitlog
visitlog_OBJECTS = \
"CMakeFiles\visitlog.dir\main.cpp.obj" \
"CMakeFiles\visitlog.dir\visitor.cpp.obj"

# External object files for target visitlog
visitlog_EXTERNAL_OBJECTS =

visitlog.exe: CMakeFiles\visitlog.dir\main.cpp.obj
visitlog.exe: CMakeFiles\visitlog.dir\visitor.cpp.obj
visitlog.exe: CMakeFiles\visitlog.dir\build.make
visitlog.exe: CMakeFiles\visitlog.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable visitlog.exe"
	"C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\visitlog.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\10.0.18362.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\10.0.18362.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\visitlog.dir\objects1.rsp @<<
 /out:visitlog.exe /implib:visitlog.lib /pdb:C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug\visitlog.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\visitlog.dir\build: visitlog.exe
.PHONY : CMakeFiles\visitlog.dir\build

CMakeFiles\visitlog.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\visitlog.dir\cmake_clean.cmake
.PHONY : CMakeFiles\visitlog.dir\clean

CMakeFiles\visitlog.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\elyas\Documents\GitHub\visitlog C:\Users\elyas\Documents\GitHub\visitlog C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug C:\Users\elyas\Documents\GitHub\visitlog\cmake-build-debug\CMakeFiles\visitlog.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\visitlog.dir\depend

