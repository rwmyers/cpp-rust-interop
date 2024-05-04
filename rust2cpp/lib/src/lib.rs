#[no_mangle]
pub extern "C" fn my_rust_function(value: i32) -> i32 {
    value * 2
}

