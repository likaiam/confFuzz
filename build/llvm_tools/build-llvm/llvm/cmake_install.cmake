# Install script for directory: /home/linuxbrew/build/llvm_tools/llvm-11.0.0.src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xllvm-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "/home/linuxbrew/build/llvm_tools/llvm-11.0.0.src/include/llvm"
    "/home/linuxbrew/build/llvm_tools/llvm-11.0.0.src/include/llvm-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.td$" REGEX "/[^/]*\\.inc$" REGEX "/LICENSE\\.TXT$" REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xllvm-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "/home/linuxbrew/build/llvm_tools/build-llvm/llvm/include/llvm"
    "/home/linuxbrew/build/llvm_tools/build-llvm/llvm/include/llvm-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.gen$" REGEX "/[^/]*\\.inc$" REGEX "/CMakeFiles$" EXCLUDE REGEX "/config\\.h$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcmake-exportsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm" TYPE FILE FILES "/home/linuxbrew/build/llvm_tools/build-llvm/llvm/lib/cmake/llvm/LLVMConfigExtensions.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/lib/Demangle/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/lib/Support/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/lib/TableGen/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/TableGen/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/include/llvm/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/lib/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/FileCheck/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/PerfectShuffle/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/count/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/not/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/yaml-bench/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/projects/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/tools/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/runtimes/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/examples/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/lit/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/test/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/unittests/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/unittest/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/docs/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/cmake/modules/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/llvm-lit/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/benchmark/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/benchmarks/cmake_install.cmake")
  include("/home/linuxbrew/build/llvm_tools/build-llvm/llvm/utils/llvm-locstats/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/linuxbrew/build/llvm_tools/build-llvm/llvm/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
