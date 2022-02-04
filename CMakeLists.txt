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
    set(CMAKE_CXX_FLAGS_DEBUG "/Zi /Od /MT")
    set(CMAKE_CXX_FLAGS_RELEASE "/O2 /MT")
endif()

if (WIN32)
    set(GUROBI_ROOT "C:/gurobi912/win64")

    set(GUROBI_INCLUDE_DIR "${GUROBI_ROOT}/include")
    message(STATUS "GUROBI_INCLUDE_DIR : ${GUROBI_INCLUDE_DIR}")

    set(GUROBI_LIBRARY "${GUROBI_ROOT}/lib/gurobi91.lib")
    set(GUROBI_LIBRARY_CPLUS "${GUROBI_ROOT}/lib/gurobi_c++mt2019.lib")

    set(GUROBI_LIBRARIES ${GUROBI_LIBRARY_CPLUS} ${GUROBI_LIBRARY})
else ()
    # ATTENTION -> Il faut modifier le chemin GUROBI_ROOT ci-dessous
    set(GUROBI_ROOT "/opt/gurobi/gurobi950/linux64/")

    # On cr�� une variable stockant le dossier o� se situent les fichiers en-t�te du solveur GUROBI (pour la compilation)
    set(GUROBI_INCLUDE_DIR "${GUROBI_ROOT}/include")
    message(STATUS "GUROBI_INCLUDE_DIR : ${GUROBI_INCLUDE_DIR}") #On affiche le dossier pr�c�dent (pour DEBUG)

    set(GUROBI_LIBRARY_CPLUS "${GUROBI_ROOT}/lib/libgurobi_c++.a")
    set(GUROBI_LIBRARY "${GUROBI_ROOT}/lib/libgurobi95.so")

    set(GUROBI_LIBRARIES ${GUROBI_LIBRARY_CPLUS} ${GUROBI_LIBRARY})
endif()
message(STATUS "GUROBI_LIBRARIES : ${GUROBI_LIBRARIES}")

set(APP_NAME AppliedAlgorithmics)

# Source files
include_directories(src)
include_directories(${GUROBI_INCLUDE_DIR})

file(GLOB_RECURSE COMMON_SOURCES 
    src/**.hpp
    src/**.cpp
)

# Executables
add_executable(${APP_NAME} ${COMMON_SOURCES})
target_link_libraries(${APP_NAME} ${GUROBI_LIBRARIES})

# Data
# Move data directory to cmake's output directory
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/data DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

# Add custom command for smart enough IDEs
add_custom_command(TARGET ${APP_NAME} POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/data $<TARGET_FILE_DIR:${APP_NAME}>/data)
