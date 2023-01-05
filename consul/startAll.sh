#!/bin/bash

echo "Subindo o consulserver01..."
docker exec consulserver01 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver01 -bind=10.5.0.2 -data-dir=/var/lib/consul -config-dir=/etc/consul.d" &

echo "Subindo o consulserver02..."
docker exec consulserver02 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver02 -bind=10.5.0.3 -data-dir=/var/lib/consul -config-dir=/etc/consul.d" &

echo "Subindo o consulserver03..."
docker exec consulserver03 sh -c "consul agent -server -bootstrap-expect=3 -node=consulserver03 -bind=10.5.0.4 -data-dir=/var/lib/consul -config-dir=/etc/consul.d" &

echo "Subindo o consulclient01..."
docker exec consulclient01 sh -c "consul agent -node=consulclient01 -bind=10.5.0.5 -data-dir=/var/lib/consul -config-dir=/etc/consul.d" &

echo "Subindo o consulclient02..."
docker exec consulclient02 sh -c "consul agent -node=consulclient02 -bind=10.5.0.6 -data-dir=/var/lib/consul -config-dir=/etc/consul.d" &

echo "Concluído!"
