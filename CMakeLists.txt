cmake_minimum_required(VERSION 3.22)

include(FetchContent)

FetchContent_Declare(
    Corrosion
    GIT_REPOSITORY https://github.com/corrosion-rs/corrosion.git
    GIT_TAG v0.4 # Optionally specify a commit hash, version tag or branch here
)
FetchContent_MakeAvailable(Corrosion)

project(rust_cpp_interop)

add_subdirectory(rust2cpp)
add_subdirectory(cpp2rust)
