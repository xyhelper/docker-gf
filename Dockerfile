FROM golang:latest
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG VERSION
LABEL maintainer="lidong@xyhelper.cn"
LABEL TARGETPLATFORM=$TARGETPLATFORM
LABEL BUILDPLATFORM=$BUILDPLATFORM
RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN  wget -O gf https://gh.xyhelper.cn/github.com/gogf/gf/releases/download/${VERSION}/gf_$(go env GOOS)_$(go env GOARCH) && chmod +x gf && ./gf install -y && rm ./gf
# RUN  wget -O gf https://gh.xyhelper.cn/github.com/gogf/gf/releases/latest/download/gf_$(go env GOOS)_$(go env GOARCH) && chmod +x gf && ./gf install -y && rm ./gf