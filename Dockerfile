FROM alpine:3.16.0 AS linux-amd64
ARG HADOLINT=hadolint-Linux-x86_64

FROM alpine:3.16.0 AS linux-arm64
ARG HADOLINT=hadolint-Linux-arm64

FROM ${TARGETOS}-${TARGETARCH} AS final
RUN apk --no-cache add curl wget && \
    wget -q https://github.com/hadolint/hadolint/releases/download/v2.10.0/${HADOLINT} && \
    chmod +x ${HADOLINT} && \
    mv ${HADOLINT} /usr/bin/hadolint
