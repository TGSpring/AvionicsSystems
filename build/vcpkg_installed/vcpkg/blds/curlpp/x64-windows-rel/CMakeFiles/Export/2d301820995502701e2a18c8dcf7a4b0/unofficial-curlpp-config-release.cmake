#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::curlpp::curlpp" for configuration "Release"
set_property(TARGET unofficial::curlpp::curlpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::curlpp::curlpp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/curlpp.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "C:/Users/tyler/source/repos/newAS/AvionicsSystems/build/vcpkg_installed/x64-windows/lib/libcurl.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/curlpp.dll"
  )

list(APPEND _cmake_import_check_targets unofficial::curlpp::curlpp )
list(APPEND _cmake_import_check_files_for_unofficial::curlpp::curlpp "${_IMPORT_PREFIX}/lib/curlpp.lib" "${_IMPORT_PREFIX}/bin/curlpp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
