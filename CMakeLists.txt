cmake_minimum_required(VERSION 3.8) # For C++17 Support

project(AppliedAlgorithmics LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

if (CMAKE_CXX_COMPILER_ID MATCHES GNU)
    set (UNIX TRUE)
    add_compile_definitions(PLATFORM_LINUX)

    set(CMAKE_CXX_FLAGS "-Wall")
    set(CMAKE_CXX_FLAGS_DEBUG "-g -O0 -fprofile-arcs -ftest-coverage")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3")
elseif (CMAKE_CXX_COMPILER_ID MATCHES MSVC)
	set(WINDOWS TRUE)
    add_compile_definitions(PLATFORM_WINDOWS)
    
    set(CMAKE_CXX_FLAGS "/W4 /EHsc")
    set(CMAKE_CXX_FLAGS_DEBUG "/Zi /Od")
    set(CMAKE_CXX_FLAGS_RELEASE "/O2")
endif()

option(ENABLE_DEBUG "Debug option" OFF)
if (ENABLE_DEBUG)
    set(CMAKE_BUILD_TYPE DEBUG)
    add_definitions(-DMODE_DEBUG)
else()
    set(CMAKE_BUILD_TYPE RELEASE)
    add_definitions(-DMODE_RELEASE)
endif()

set(APP_NAME AppliedAlgorithmics)

# Source files
include_directories(src)

file(GLOB_RECURSE COMMON_SOURCES 
    src/**.hpp
    src/**.cpp
)

# Executables
add_executable(${APP_NAME} ${COMMON_SOURCES})

# Data
add_custom_command(TARGET ${APP_NAME} POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/data $<TARGET_FILE_DIR:${APP_NAME}>/data)
