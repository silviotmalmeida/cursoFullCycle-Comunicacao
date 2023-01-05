#!/bin/bash

echo "Subindo o consulclient01..."
docker exec -it consulclient01 sh -c "consul agent -node=consulclient01 -bind=10.5.0.5 -data-dir=/var/lib/consul -config-dir=/etc/consul.d"
