cmake_minimum_required(VERSION 2.8)

# Application source
set(APPLICATION_SOURCE

    # Application
    main.cpp
    camera.cpp
    shader.cpp
    sph_system.cpp
    sph_timer.cpp
    mesh_builder.cpp
)

#-------------------------------------------------------------------------------
# Set include directories
#-------------------------------------------------------------------------------
include_directories(
    ../external/glfw/include
    ../external/glew/include
    ../external/glm
    ${GLFW_INCLUDE_DIRS}
    ${GLEW_INCLUDE_DIRS}
)

#-------------------------------------------------------------------------------
# Set link directories
#-------------------------------------------------------------------------------
link_directories(
  ${GLEW_LIBRARY_DIRS}
  ${GLFW_LIBRARY_DIRS}
)

#-------------------------------------------------------------------------------
# Add executable
#-------------------------------------------------------------------------------
add_executable(asst4sph ${APPLICATION_SOURCE})

target_link_libraries( asst4sph
    glew ${GLEW_LIBRARIES}
    glfw ${GLFW_LIBRARIES}
)

#-------------------------------------------------------------------------------
# Platform-specific configurations for target
#-------------------------------------------------------------------------------
if(APPLE)
  set_property( TARGET asst4sph APPEND_STRING PROPERTY COMPILE_FLAGS
                "-Wno-deprecated-declarations -Wno-c++11-extensions")
endif(APPLE)

# Put executable in build directory root
set(EXECUTABLE_OUTPUT_PATH ..)

# Install to project root
install(TARGETS asst4sph DESTINATION ${Asst4SPH_SOURCE_DIR})
