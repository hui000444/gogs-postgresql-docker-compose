#!/bin/bash

echo "Waiting for postgresql service"

# wait for mysql service
while [ "$(nc -v -z -w 3 postgresql 5432 2> /dev/null; echo $?)" == "1" ];
do
    sleep 1
done

source /app/gogs/docker/start.sh
