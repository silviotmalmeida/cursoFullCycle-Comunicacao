#!/bin/bash

echo "Parando o nginx do consulclient02..."
docker exec -it consulclient02 sh -c "nginx -s stop"
