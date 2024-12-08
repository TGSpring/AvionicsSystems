# Install script for directory: C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/src/450f80a70d-115b961924.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/include/utf8proc.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/include" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/src/450f80a70d-115b961924.clean/utf8proc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/lib/utf8proc.lib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/utf8proc.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/bin/utf8proc.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/utf8proc.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc/unofficial-utf8proc-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc/unofficial-utf8proc-config.cmake"
         "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/CMakeFiles/Export/bb338b4576c358fc731cbefa3b54716d/unofficial-utf8proc-config.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc/unofficial-utf8proc-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc/unofficial-utf8proc-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/CMakeFiles/Export/bb338b4576c358fc731cbefa3b54716d/unofficial-utf8proc-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/unofficial-utf8proc" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/CMakeFiles/Export/bb338b4576c358fc731cbefa3b54716d/unofficial-utf8proc-config-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/lib/pkgconfig/libutf8proc.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/utf8proc_x64-windows/debug/lib/pkgconfig" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/libutf8proc.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/utf8proc/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
