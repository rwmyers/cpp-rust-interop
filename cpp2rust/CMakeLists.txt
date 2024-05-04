# Import targets defined in a package or workspace manifest `Cargo.toml` file
# See parent directory for corrosion import details
corrosion_import_crate(MANIFEST_PATH rust/Cargo.toml)

add_library(cpp-lib lib/lib.cpp)
target_compile_features(cpp-lib PRIVATE cxx_std_14)
set_target_properties(
    cpp-lib
    PROPERTIES
        POSITION_INDEPENDENT_CODE ON
)

corrosion_link_libraries(rust-exe cpp-lib)
