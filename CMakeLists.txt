#--------------------------------------------------------------------------------
# Versions and Project Name
cmake_minimum_required(VERSION 3.1...3.15)
project(system-monitor)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#--------------------------------------------------------------------------------
enable_language(C CXX ASM)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_NO_SYSTEM_FROM_IMPORTED ON)


#--------------------------------------------------------------------------------
# Get the Project Root for Shared Components
get_filename_component(PARENT_DIR ${CMAKE_SOURCE_DIR} DIRECTORY)

#--------------------------------------------------------------------------------
find_package(Qt5 COMPONENTS Widgets Qml Quick REQUIRED)
#find_package(Threads REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

#--------------------------------------------------------------------------------
# Set the default build type to debug
set(${CMAKE_BUILD_TYPE} DEBUG)
set(DEFAULT_BUILD_TYPE "Debug")

#--------------------------------------------------------------------------------
# Set the project build executable name
set(BINARY ${PROJECT_NAME})

#--------------------------------------------------------------------------------
# set the source files
set(SOURCES   
   ${CMAKE_SOURCE_DIR}/source/main.cpp   
   ${CMAKE_SOURCE_DIR}/source/main_window.cpp
)

# Additional QT resources
set(QT_CUSTOM_RESOURCES
    ${CMAKE_SOURCE_DIR}/resources/resources.qrc
    ${CMAKE_SOURCE_DIR}/source/qml.qrc
)

#--------------------------------------------------------------------------------
# Create the executable
add_executable(${BINARY} ${SOURCES} ${QT_CUSTOM_RESOURCES})

#--------------------------------------------------------------------------------
# Set the include paths
target_include_directories( ${BINARY} PRIVATE   
   ${CMAKE_SOURCE_DIR}/source
   ${CMAKE_SOURCE_DIR}/include
)

#--------------------------------------------------------------------------------
# Add custom build compiler flags depending on build type
if (${CMAKE_BUILD_TYPE} MATCHES DEBUG)
target_compile_options(${BINARY} PRIVATE
   -std=gnu++17
   -O0
   -g3
   -Wall
   -Wextra
   -Wswitch-enum
   -c
   -fmessage-length=0
   -Wno-psabi
   -mfpu=neon
   -mfloat-abi=hard
   -march=armv7-a
)
else()
target_compile_options(${BINARY} PRIVATE
   -std=gnu++17
   -O2
   -g0
   -Wall
   -Wextra
   -Wswitch-enum
   -c
   -fmessage-length=0       
   -Wno-psabi 
   -mfpu=neon
   -mfloat-abi=hard
)
endif()


#--------------------------------------------------------------------------------
# Add linker options
target_link_options(${BINARY} PRIVATE
   -mfpu=neon
   -mfloat-abi=hard
   -march=armv7-a
)


#--------------------------------------------------------------------------------
# Custom preprocessor flags if required
target_compile_definitions(${BINARY} PRIVATE
    -DLINUX=1 
    -DEGL_API_FB=1
)

#--------------------------------------------------------------------------------
# set the linker options and libraries
target_link_libraries(${BINARY} 
    -static-libstdc++ 
    -static-libgcc 
    -pthread 
    Qt5::Widgets
    Qt5::Qml
    Qt5::Quick
)
