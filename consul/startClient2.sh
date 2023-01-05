#!/bin/bash

echo "Subindo o consulclient02..."
docker exec -it consulclient02 sh -c "consul agent -node=consulclient02 -bind=10.5.0.6 -data-dir=/var/lib/consul -config-dir=/etc/consul.d"
