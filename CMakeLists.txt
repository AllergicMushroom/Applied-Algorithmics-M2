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
    set(CMAKE_CXX_FLAGS_DEBUG "/Zi /Od /MTd")
    set(CMAKE_CXX_FLAGS_RELEASE "/O2 /MT")
endif()

option(ENABLE_DEBUG "Debug option" OFF)
if (ENABLE_DEBUG)
    set(CMAKE_BUILD_TYPE DEBUG)
    add_definitions(-DMODE_DEBUG)
else()
    set(CMAKE_BUILD_TYPE RELEASE)
    add_definitions(-DMODE_RELEASE)
endif()

if (WIN32)
    set(GUROBI_ROOT "C:/gurobi912/win64")

    set(GUROBI_INCLUDE_DIR "${GUROBI_ROOT}/include")
    message(STATUS "GUROBI_INCLUDE_DIR : ${GUROBI_INCLUDE_DIR}")

    if (ENABLE_DEBUG)
        set(GUROBI_LIBRARY_CPLUS "${GUROBI_ROOT}/lib/gurobi_c++mt2019.lib")
    else()
        set(GUROBI_LIBRARY_CPLUS "${GUROBI_ROOT}/lib/gurobi_c++mtd2019.lib")
    endif()

    set(GUROBI_LIBRARY "${GUROBI_ROOT}/lib/gurobi91.lib")
    set(GUROBI_LIBRARIES ${GUROBI_LIBRARY_CPLUS} ${GUROBI_LIBRARY})
else ()
    # ATTENTION -> Il faut modifier le chemin GUROBI_ROOT ci-dessous
    set(GUROBI_ROOT "/opt/gurobi910/linux64/")

    # On créé une variable stockant le dossier où se situent les fichiers en-tête du solveur GUROBI (pour la compilation)
    set(GUROBI_INCLUDE_DIR "${GUROBI_ROOT}/include")
    message(STATUS "GUROBI_INCLUDE_DIR : ${GUROBI_INCLUDE_DIR}") #On affiche le dossier précédent (pour DEBUG)

    # On créé des variables stockant l'emplacement des biblothèques/librairies du solveur GUROBI (pour l'édition des liens)
    set(GUROBI_LIBRARY_CPLUS "${GUROBI_ROOT}/lib/libgurobi_c++.a")
    # ATTENTION -> Selon la version utilisée, il faut modifier le nom de la librairie ci-dessous
    set(GUROBI_LIBRARY "${GUROBI_ROOT}/lib/libgurobi91.so")
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
add_custom_command(TARGET ${APP_NAME} POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/data $<TARGET_FILE_DIR:${APP_NAME}>/data)
