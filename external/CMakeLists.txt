#-------------------------------------------------------------------------------
# Find dependencies
#-------------------------------------------------------------------------------

# Required packages
find_package(OpenGL REQUIRED)

# Use pkg-config for GLEW & GLFW if available
find_package(PkgConfig QUIET)

# GLEW
if(PKGCONFIG_FOUND)
  pkg_search_module(GLEW QUIET glew)
else(PKGCONFIG_FOUND)
  find_package(GLEW QUIET)
endif()
if(NOT GLEW_FOUND)
  add_subdirectory(glew)
  include_directories(glew/include)
  set_property( TARGET glew APPEND_STRING PROPERTY COMPILE_FLAGS -w )
endif()

# GLFW
if(PKGCONFIG_FOUND)
  pkg_search_module(GLFW QUIET glfw3)
else(PKGCONFIG_FOUND)
  find_package(GLFW QUIET)
endif()
if(NOT GLFW_FOUND)
  add_subdirectory(glfw)
  include_directories(glfw/include)
  set_property( TARGET glfw APPEND_STRING PROPERTY COMPILE_FLAGS -w )
endif()

# GLM
include_directories(glm/glm)
