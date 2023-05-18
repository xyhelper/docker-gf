#!/bin/bash
set -e

docker run --rm \
    xyhelper/gf:latest \
    gf version
