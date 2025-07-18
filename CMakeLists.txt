cmake_minimum_required(VERSION 3.20)
project(SpaceSim)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


add_compile_options(-Wall -Wextra)

# SDL3 and OpenAL
find_package(SDL3 REQUIRED CONFIG)
find_package(OpenAL REQUIRED)
find_package(OpenGL REQUIRED)
find_package(nlohmann_json REQUIRED)

# Glad
add_library(glad STATIC
    external/glad/src/gl.c
)
target_include_directories(glad PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/external/glad/include
)

# Gather sources
file(GLOB SOURCES
    src/*.cpp
    src/gfx/*.cpp
    src/space/*.cpp
    src/universe/*.cpp
)

add_executable(space_sim ${SOURCES})

target_include_directories(space_sim PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/external/glad/include
    ${SDL3_INCLUDE_DIRS}
    ${OPENAL_INCLUDE_DIR}
)

target_link_libraries(space_sim
    PRIVATE nlohmann_json::nlohmann_json
    glad
    SDL3::SDL3
    ${OPENAL_LIBRARY}
    OpenGL::GL
    stb
)
