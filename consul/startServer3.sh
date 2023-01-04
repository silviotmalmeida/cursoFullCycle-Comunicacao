#!/bin/bash

echo "Subindo o consulserver03..."
docker exec -it consulserver03 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver03 -bind=10.5.0.4 -data-dir=/var/lib/consul -config-dir=/etc/consul.d"
