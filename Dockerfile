FROM docker.io/library/alpine:latest AS builder

RUN apk add --no-cache curl ca-certificates tar

ARG FRP_VERSION=0.72.0
RUN curl -fsSL "https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz" | tar -xz \
 && mv "frp_${FRP_VERSION}_linux_amd64/frps" /usr/local/bin/frps \
 && chmod +x /usr/local/bin/frps

FROM gcr.io/distroless/static:nonroot

COPY --from=builder /usr/local/bin/frps /usr/bin/frps

USER nonroot:nonroot

ENTRYPOINT ["/usr/bin/frps"]
CMD ["-c", "/etc/frp/frps.toml"]
