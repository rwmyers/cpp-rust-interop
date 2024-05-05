# See parent directory for corrosion import details

# Dependency structure:
# c_lib --> rust_lib --> c_exe

corrosion_import_crate(MANIFEST_PATH rust_lib/Cargo.toml)
# c_lib
add_library(c_lib c_lib/lib.cpp)
target_compile_features(c_lib PRIVATE cxx_std_14)
set_target_properties(
    c_lib
    PROPERTIES
        POSITION_INDEPENDENT_CODE ON
)

# rust_lib
# Import targets defined in a package or workspace manifest `Cargo.toml` file
corrosion_link_libraries(rust_lib c_lib)

# c_exe
add_executable(c_exe c_exe/main.cpp)
target_link_libraries(c_exe rust_lib c_lib)
