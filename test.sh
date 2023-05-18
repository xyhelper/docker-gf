#!/bin/bash
set -e

docker run --rm -it \
    -v "$(pwd):/build" \
    -w /build \
    xyhelper/gf:latest \
    gf version
