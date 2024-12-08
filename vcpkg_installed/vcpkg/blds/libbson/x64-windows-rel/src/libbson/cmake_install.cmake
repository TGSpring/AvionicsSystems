# Install script for directory: C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/src/1.28.1-04c278d73a.clean/src/libbson

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/pkgs/libbson_x64-windows")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson-1.0.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson-1.0.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson_shared-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson_shared-targets.cmake"
         "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/CMakeFiles/Export/6b6c9c432ffbcc14133f82ac0df53b76/bson_shared-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson_shared-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson_shared-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/CMakeFiles/Export/6b6c9c432ffbcc14133f82ac0df53b76/bson_shared-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/CMakeFiles/Export/6b6c9c432ffbcc14133f82ac0df53b76/bson_shared-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
          
            # Installation of pkg-config for target bson_shared
            message(STATUS "Generating pkg-config file: libbson-1.0.pc")
            file(READ [[C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/_pkgconfig/bson_shared-release-for-install.txt]] content)
            # Insert the install prefix:
            string(REPLACE "%INSTALL_PLACEHOLDER%" "${CMAKE_INSTALL_PREFIX}" content "${content}")
            # Write it before installing again:
            file(WRITE [[C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson_shared-pkg-config-tmp.txt]] "${content}")
        
        
    
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE RENAME "libbson-1.0.pc" FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson_shared-pkg-config-tmp.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bson" TYPE DIRECTORY FILES
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/src/1.28.1-04c278d73a.clean/src/libbson/src/bson/"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/src/bson/"
    FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\-private\\.h$" EXCLUDE REGEX "/forwarding$" EXCLUDE REGEX "/modules$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/src/1.28.1-04c278d73a.clean/src/libbson/src/bson/forwarding/bson.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0" TYPE FILE FILES
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson/bson-1.0-config.cmake"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/bson/bson-1.0-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson-targets.cmake"
         "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/CMakeFiles/Export/6b6c9c432ffbcc14133f82ac0df53b76/bson-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0/bson-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bson-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/CMakeFiles/Export/6b6c9c432ffbcc14133f82ac0df53b76/bson-targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libbson-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/libbson-1.0-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libbson-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/vcpkg_installed/vcpkg/blds/libbson/x64-windows-rel/src/libbson/libbson-1.0-config-version.cmake")
endif()

