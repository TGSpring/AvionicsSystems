#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::curlpp::curlpp" for configuration "Debug"
set_property(TARGET unofficial::curlpp::curlpp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(unofficial::curlpp::curlpp PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/curlpp.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/x64-windows/debug/lib/libcurl-d.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/curlpp.dll"
  )

list(APPEND _cmake_import_check_targets unofficial::curlpp::curlpp )
list(APPEND _cmake_import_check_files_for_unofficial::curlpp::curlpp "${_IMPORT_PREFIX}/lib/curlpp.lib" "${_IMPORT_PREFIX}/bin/curlpp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
