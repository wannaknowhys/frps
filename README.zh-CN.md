# frps

[English](README.md) | [简体中文](README.zh-CN.md)

基于 `gcr.io/distroless/static:nonroot` 的极致精简无 Shell `frps` 容器，搭载官方静态 `frps` 二进制。

## 核心特性

- **纯粹 Distroless**：底座为 `gcr.io/distroless/static:nonroot`。**完全无 Shell**（无 `/bin/sh`、无 `/bin/bash`），无包管理器，无任何多余 OS 工具。
- **官方静态二进制**：直接提取官方 upstream `fatedier/frp` 发布包中的纯静态 Linux amd64 二进制。
- **近乎零攻击面**：容器内仅有静态单一 `frps` 可执行文件与系统 CA 根证书；默认非 root（UID 65532）运行。
- **自动化滚动 CI**：由 GitHub Actions 每日自动探测上游 Release 更新，通过指纹门控发布至 GHCR。
