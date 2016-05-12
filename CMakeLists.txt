cmake_minimum_required (VERSION 2.8)
project(Asst4SPH)

#-------------------------------------------------------------------------------
# Build options
#-------------------------------------------------------------------------------
option(BUILD_DEBUG     "Build with debug settings"    OFF)

#-------------------------------------------------------------------------------
# Platform-specific settings
#-------------------------------------------------------------------------------

###################
# Building on OSX #
###################
if(APPLE)

    # Clang configuration
    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
        include_directories( "/System/Library/Frameworks" )
        find_library (COCOA_LIBRARIES Cocoa)
        find_library (IOKIT_LIBRARIES IOkit)
        find_library (COREVIDEO_LIBRARIES CoreVideo)
        set(CLANG_CXX_FLAGS "-std=c++11 -m64")

        if(BUILD_DEBUG)
            set(CMAKE_BUILD_TYPE Debug)
        else(BUILD_DEBUG)
            set(CLANG_CXX_FLAGS "${CLANG_CXX_FLAGS} -O3")
            set(CLANG_CXX_FLAGS "${CLANG_CXX_FLAGS} -funroll-loops")
            set(CLANG_CXX_FLAGS "${CLANG_CXX_FLAGS} -Wno-narrowing")
            set(CLANG_CXX_FLAGS "${CLANG_CXX_FLAGS} -Wno-deprecated-register")
        endif(BUILD_DEBUG)

        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CLANG_CXX_FLAGS}")

    endif()

    # GCC configuration
    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")

        set(GCC_CXX_FLAGS "-std=gnu++11 -m64")

        if(BUILD_DEBUG)
            set(CMAKE_BUILD_TYPE Debug)
        else(BUILD_DEBUG)
            set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -O3")
            set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -fopenmp")
        endif(BUILD_DEBUG)

        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_CXX_FLAGS}")

    endif()

endif(APPLE)

##################
# Build on Linux #
##################
set(LINUX UNIX AND NOT APPLE)
if(LINUX)

    # GCC only
    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")

        set(GCC_CXX_FLAGS "-std=gnu++11 -m64")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXi")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXxf86vm")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXinerama")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXcursor")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXfixes")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXrandr")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXext")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXrender")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lX11")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lpthread")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lxcb")
        set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -lXau")
        # Debug configuration
        if(BUILD_DEBUG)
            set(CMAKE_BUILD_TYPE Debug)
        else(BUILD_DEBUG)
            set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -O3")
            set(GCC_CXX_FLAGS "${GCC_CXX_FLAGS} -fopenmp")
        endif(BUILD_DEBUG)

        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_CXX_FLAGS}")

    endif()

endif(LINUX)

#-------------------------------------------------------------------------------
# Add subdirectories
#-------------------------------------------------------------------------------
add_subdirectory(external)
add_subdirectory(src)

# Install settings
set(CMAKE_INSTALL_PREFIX "${PROJECT_SOURCE_DIR}/")
