FROM alpine:latest

RUN uname -m && \
    env && \
    apk --nocache add git curl docker-cli
