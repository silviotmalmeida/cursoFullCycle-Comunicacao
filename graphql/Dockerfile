# definindo a imagem base
FROM ubuntu:22.04

# comandos a serem executados
## instalando as dependências
RUN apt-get update && \
    apt-get install curl golang-go -y

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /usr/src/app

ENV GOPATH=/root/go

ENV PATH=$PATH:$GOPATH/bin