extern "C" {
    fn cpp_function(v: i32) -> i32;
}

fn function(v: i32) -> i32 {
    unsafe {
        cpp_function(v)
    }
}

fn main() {
    println!("Value from C: {}", function(3));
}
