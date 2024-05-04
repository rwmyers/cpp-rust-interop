# Import targets defined in a package or workspace manifest `Cargo.toml` file
# See parent directory for corrosion import details
corrosion_import_crate(MANIFEST_PATH lib/Cargo.toml)

add_executable(your_cpp_bin src/main.cpp)
target_link_libraries(your_cpp_bin PUBLIC my_rust_lib)
