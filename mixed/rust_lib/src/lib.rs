extern "C" {
    fn cpp_function(v: i32) -> i32;
}

fn safe_function(v: i32) -> i32 {
    unsafe {
        cpp_function(v)
    }
}

#[no_mangle]
pub extern "C" fn my_rust_function(v: i32) -> i32 {
    safe_function(v * 2)
}

