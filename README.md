# docker-gf

Docker image for [gf](https://github.com/gogf/gf/releases) framework.

## Usage

可以用于自动化构建，也可以用于本地开发。可以通过指定版本号来快速切换版本。应该也可以解决在macOS上打开文件数过多的问题。

### Pull image

```bash
docker pull xyhelper/gf
```

### 查看版本

```bash
docker run --rm -it \
    -v "$(pwd):/build" \
    -w /build \
    xyhelper/gf:latest \
    gf version
```

### 创建项目

```bash
docker run --rm -it \
    -v "$(pwd):/build" \
    -w /build \
    xyhelper/gf:latest \
    gf init hello
```

### 运行项目

```bash
docker run --rm -it \
    -v "$(pwd):/build" \
    -w /build \
    -p 8000:8000 \
    xyhelper/gf:latest \
    gf run main.go
```
