cmake_minimum_required(VERSION 3.22)
include(FetchContent)

FetchContent_Declare(
    Corrosion
    GIT_REPOSITORY https://github.com/corrosion-rs/corrosion.git
)
FetchContent_MakeAvailable(Corrosion)

project(rust_cpp_interop)

add_subdirectory(rust2cpp)
add_subdirectory(cpp2rust)
add_subdirectory(mixed)
