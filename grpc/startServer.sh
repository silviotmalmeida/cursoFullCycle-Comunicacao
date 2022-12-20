#!/bin/bash

echo "Iniciando o servidor..."
docker container exec -it example_grpc bash -c "go mod tidy; go run cmd/grpcServer/main.go"