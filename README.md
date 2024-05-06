# CMake / Rust / C++ Interop prototype

## Requirements
[CMake 3.22](https://cmake.org/download/)
[Rust](https://www.rust-lang.org/tools/install)
[Android NDK](https://developer.android.com/ndk/downloads)

The setup automatically downloads [corrosion](https://github.com/corrosion-rs/corrosion/tree/master), which integrates Rust into a CMake project.

The `ANDROID_NDK` path variable must be set to the location you downloaded the Android NDK to.

## Building

```
source build.sh
proto-build
```

Note that `proto-build` is just a convenience wrapper around (roughly) the following:

```
mkdir -p build
pushd build
cmake .. # Create the CMake build infrastructure
cmake -build . # build
popd
```
