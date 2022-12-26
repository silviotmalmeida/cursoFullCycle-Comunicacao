# definindo a imagem base
FROM ubuntu:22.04

# comandos a serem executados
## instalando as dependências
RUN apt-get update && \
    apt-get install curl golang-go protobuf-compiler golang-goprotobuf-dev -y

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    go install github.com/ktr0731/evans@latest

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /usr/src/app

ENV GOPATH=/root/go

ENV PATH=$PATH:$GOPATH/bin