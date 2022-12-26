#!/bin/bash

echo "Iniciando o cliente..."
docker container exec -it example_grpc bash -c "evans -r repl"