#include <iostream>

extern "C" int my_rust_function(int);

int main() {
    int result = my_rust_function(5);
    std::cout << "Result from Rust: " << result << std::endl;
    return 0;
}

