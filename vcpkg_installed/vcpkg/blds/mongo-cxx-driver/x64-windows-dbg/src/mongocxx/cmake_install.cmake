# Install script for directory: C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/src/r3.11.0-31f2ff57c1.clean/src/mongocxx

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/mongo-cxx-driver_x64-windows/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-dbg/src/mongocxx/include/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-dbg/src/mongocxx/lib/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mongocxx/v_noabi/mongocxx/config" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-dbg/src/mongocxx/lib/mongocxx/v_noabi/mongocxx/config/export.hpp")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-dbg/src/mongocxx/cmake/cmake_install.cmake")
endif()

