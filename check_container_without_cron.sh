#!/bin/bash

while true
do
	if [[ $(docker ps --format '{{.Names}}' | grep nginx_cont) == "nginx_cont" ]]; then
        echo "Container is running."
    else
        echo "Container is not running! Starting the container."
        docker start nginx_cont
    fi
    sleep 15
done  
