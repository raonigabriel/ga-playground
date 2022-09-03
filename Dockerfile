FROM alpine:latest

RUN uname -m && \
    env && \
    apk --no-cache add git curl docker-cli
