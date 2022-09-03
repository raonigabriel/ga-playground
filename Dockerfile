FROM alpine:latest

RUN wget https://az764295.vo.msecnd.net/stable/784b0177c56c607789f9638da7b6bf3230d47a8c/vscode-server-${TARGETOS}-${TARGETARCH}-web.tar.gz

RUN tar -xf vscode-server-${TARGETOS}-${TARGETARCH}-web.tar.gz

RUN  rm vscode-server-${TARGETOS}-${TARGETARCH}-web.tar.gz

RUN mv vscode-server-${TARGETOS}-${TARGETARCH}-web /opt/vscode-server    
