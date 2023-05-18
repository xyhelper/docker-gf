#!/bin/bash

# 获取第一个参数为版本号
VERSION=$1

# 如果版本号为空，则提示输入版本号
if [ ! -n "$VERSION" ]; then
    echo "请输入版本号"
    exit
fi
# 如果存在第二个参数,且为 latest，则同时打 tag 为 latest
if [ -n "$2" ] && [ "$2" = "latest" ]; then
    echo "同时打 tag 为 latest"
    docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg VERSION=$VERSION -t xyhelper/gf:$VERSION -t xyhelper/gf:latest --push .
    exit
fi

# docker build --build-arg VERSION=$VERSION  -t xyhelper/gf:$VERSION .
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg VERSION=$VERSION -t xyhelper/gf:$VERSION --push .
