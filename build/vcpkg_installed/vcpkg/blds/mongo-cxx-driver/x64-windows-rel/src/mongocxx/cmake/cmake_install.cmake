# Install script for directory: C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/src/r3.10.1-9867d4173c.clean/src/mongocxx/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/pkgs/mongo-cxx-driver_x64-windows")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/mongocxx-v_noabi-rhs-md.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/mongocxx-v_noabi-rhs-md.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1/mongocxx_targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1/mongocxx_targets.cmake"
         "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/CMakeFiles/Export/6d42b658c6c9292e8bf3ee99be0b2687/mongocxx_targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1/mongocxx_targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1/mongocxx_targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/CMakeFiles/Export/6d42b658c6c9292e8bf3ee99be0b2687/mongocxx_targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/CMakeFiles/Export/6d42b658c6c9292e8bf3ee99be0b2687/mongocxx_targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongocxx-3.10.1" TYPE FILE FILES
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/mongocxx-config-version.cmake"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/mongocxx-config.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE RENAME "libmongocxx.pc" FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-cxx-driver/x64-windows-rel/src/mongocxx/cmake/libmongocxx-v_noabi-rhs-md.pc")
endif()

