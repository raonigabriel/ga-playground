FROM alpine:latest AS linux-amd64
ARG ARCH=x64

FROM alpine:latest AS linux-arm64
ARG ARCH=arm64

FROM ${TARGETOS}-${TARGETARCH} AS final
RUN wget https://az764295.vo.msecnd.net/stable/784b0177c56c607789f9638da7b6bf3230d47a8c/vscode-server-linux-${ARCH}-web.tar.gz

RUN tar -xf vscode-server-linux-${ARCH}-web.tar.gz

RUN  vscode-server-linux-${ARCH}-web.tar.gz

RUN mv vscode-server-linux-${ARCH}-web /opt/vscode-server
