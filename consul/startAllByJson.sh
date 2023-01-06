#!/bin/bash

echo "Subindo o consulserver01..."
docker exec consulserver01 sh -c "consul agent -config-dir=/etc/consul.d" &

echo "Subindo o consulserver02..."
docker exec consulserver02 sh -c "consul agent -config-dir=/etc/consul.d" &

echo "Subindo o consulserver03..."
docker exec consulserver03 sh -c "consul agent -config-dir=/etc/consul.d" &

echo "Subindo o consulclient01..."
docker exec consulclient01 sh -c "consul agent -config-dir=/etc/consul.d" &

echo "Subindo o consulclient02..."
docker exec consulclient02 sh -c "consul agent -config-dir=/etc/consul.d" &

echo "Concluído!"
