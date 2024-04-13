# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_actiabot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED actiabot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(actiabot_FOUND FALSE)
  elseif(NOT actiabot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(actiabot_FOUND FALSE)
  endif()
  return()
endif()
set(_actiabot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT actiabot_FIND_QUIETLY)
  message(STATUS "Found actiabot: 0.0.0 (${actiabot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'actiabot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${actiabot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(actiabot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${actiabot_DIR}/${_extra}")
endforeach()
