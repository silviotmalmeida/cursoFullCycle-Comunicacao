#!/bin/bash

echo "Escutando o TCP do consulserver01..."
docker exec -it consulserver01 sh -c "tcpdump -i eth0 -an port 8301 -A"