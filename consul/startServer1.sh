#!/bin/bash

echo "Subindo o consulserver01..."
docker exec -it consulserver01 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver01 -bind=10.5.0.2 -data-dir=/var/lib/consul -config-dir=/etc/consul.d"
