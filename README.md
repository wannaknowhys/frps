# frps

[English](README.md) | [简体中文](README.zh-CN.md)

Ultra-minimalist, zero-shell `frps` container based on `gcr.io/distroless/static:nonroot` with the official static `frps` binary.

## Key Highlights

- **Pure Distroless**: Base image is `gcr.io/distroless/static:nonroot`. Contains **NO shell** (`/bin/sh` or `/bin/bash` do not exist), no package managers, and no runtime OS packages.
- **Official Static Binary**: The `frps` binary is extracted directly from official upstream releases of `fatedier/frp`.
- **Minimal Attack Surface**: The container contains only the static binary and CA certificates. Runs strictly as non-root (UID 65532).
- **Automated Rolling CI**: Built daily via GitHub Actions with upstream release change detection and digest gating.
