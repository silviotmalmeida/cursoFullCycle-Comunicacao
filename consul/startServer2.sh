#!/bin/bash

echo "Subindo o consulserver02..."
docker exec -it consulserver02 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver02 -bind=10.5.0.3 -data-dir=/var/lib/consul -config-dir=/etc/consul.d"
