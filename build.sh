#!/bin/bash

function proto-build() {
    git_root=$(git rev-parse --show-toplevel)

    if [ -z "$git_root" ]; then
        echo "Error: Not in a git repository."
        return 1
    fi

    build_dir=$git_root/build
    pushd $build_dir
    cmake .. && cmake --build .
    popd
}
