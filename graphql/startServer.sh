#!/bin/bash

echo "Atualizando as dependências..."
docker container exec -it example_graphql bash -c "go mod tidy"

echo "Iniciando o servidor..."
docker container exec -it example_graphql bash -c "go run cmd/server/server.go"