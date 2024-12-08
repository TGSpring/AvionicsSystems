# Install script for directory: C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/pkgs/mongo-c-driver_x64-windows/debug")
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
          
            # Installation of pkg-config for target mongoc_shared
            message(STATUS "Generating pkg-config file: libmongoc-1.0.pc")
            file(READ [[C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/_pkgconfig/mongoc_shared-debug-for-install.txt]] content)
            # Insert the install prefix:
            string(REPLACE "%INSTALL_PLACEHOLDER%" "${CMAKE_INSTALL_PREFIX}" content "${content}")
            # Write it before installing again:
            file(WRITE [[C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc_shared-pkg-config-tmp.txt]] "${content}")
        
        
    
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE RENAME "libmongoc-1.0.pc" FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc_shared-pkg-config-tmp.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc-1.0.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc-1.0.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mongoc" TYPE FILE FILES
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/src/mongoc/mongoc-config.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/src/mongoc/mongoc-version.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-apm.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-bulk-operation.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-change-stream.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-client.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-client-pool.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-client-side-encryption.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-collection.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-cursor.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-database.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-error.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-flags.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-find-and-modify.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-gridfs.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-gridfs-bucket.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-gridfs-file.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-gridfs-file-page.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-gridfs-file-list.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-handshake.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-host-list.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-init.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-index.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-iovec.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-log.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-macros.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-matcher.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-opcode.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-optional.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-prelude.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-read-concern.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-read-prefs.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-server-api.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-server-description.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-client-session.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-sleep.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-socket.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-tls-libressl.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-tls-openssl.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-buffered.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-file.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-gridfs.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-socket.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-topology-description.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-uri.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-version-functions.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-write-concern.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-rand.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-stream-tls.h"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/mongoc-ssl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/src/1.27.2-f8875ca953.clean/src/libmongoc/src/mongoc/forwarding/mongoc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/src/libmongoc-ssl-1.0.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0/mongoc-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0/mongoc-targets.cmake"
         "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/CMakeFiles/Export/cc1ca9f5d410b47e5f99801e6c7d2b06/mongoc-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0/mongoc-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0/mongoc-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/CMakeFiles/Export/cc1ca9f5d410b47e5f99801e6c7d2b06/mongoc-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/CMakeFiles/Export/cc1ca9f5d410b47e5f99801e6c7d2b06/mongoc-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mongoc-1.0" TYPE FILE FILES
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc/mongoc-1.0-config.cmake"
    "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/mongoc/mongoc-1.0-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libmongoc-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/libmongoc-1.0-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libmongoc-1.0" TYPE FILE FILES "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/vcpkg/blds/mongo-c-driver/x64-windows-dbg/src/libmongoc/libmongoc-1.0-config-version.cmake")
endif()

