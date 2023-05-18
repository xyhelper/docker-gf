FROM golang:latest

ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG VERSION

LABEL maintainer="lidong@xyhelper.cn"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="golang-app"
LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-platform=$BUILDPLATFORM
LABEL org.label-schema.target-platform=$TARGETPLATFORM

ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct
RUN mkdir /build

RUN wget -O gf https://gh.xyhelper.cn/github.com/gogf/gf/releases/download/${VERSION}/gf_$(go env GOOS)_$(go env GOARCH) && \
    chmod +x gf && \
    ./gf install -y && \
    rm ./gf
