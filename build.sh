#!/bin/bash

function proto-build() {
    git_root=$(git rev-parse --show-toplevel)

    if [ -z "$git_root" ]; then
        echo "Error: Not in a git repository."
        return 1
    fi

    build_dir=$git_root/build

    mkdir -p $build_dir

    # Android
    SYSTEM_NAME="Android"
    SYSTEM_VERSION=21
    targets=("armeabi-v7a" "x86" "arm64-v8a")
    for target in ${targets}; do
        target_dir=${build_dir}/android-${target}
        mkdir -p $target_dir
        pushd $target_dir
        cmake \
           -DCMAKE_SYSTEM_NAME=$SYSTEM_NAME \
           -DCMAKE_SYSTEM_VERSION=$SYSTEM_VERSION \
           -DCMAKE_ANDROID_ARCH_ABI=$target \
           -DCMAKE_ANDROID_NDK=$ANDROID_NDK \
           $git_root && \
        cmake --build .

        popd

    done

    # Linux
    processor=x86_64
    target_dir=${build_dir}/linux-$processor

    mkdir -p $target_dir
    pushd $target_dir > /dev/null
    cmake \
       -DCMAKE_SYSTEM_NAME=Linux \
       -DCMAKE_SYSTEM_PROCESSOR=$processor \
       $git_root && \
    cmake --build .
    popd > /dev/null
}
