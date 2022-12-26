#!/bin/bash

echo "Atualizando as dependências..."
docker container exec -it example_grpc bash -c "go mod tidy; protoc --go_out=. --go-grpc_out=. proto/course_category.proto"

echo "Iniciando o servidor..."
docker container exec -it example_grpc bash -c "go run cmd/grpcServer/main.go"