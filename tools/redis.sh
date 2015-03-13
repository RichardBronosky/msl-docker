#!/usr/bin/env bash

[[ $(docker ps -a | grep -c redis-server) -gt 0 ]] && docker rm -f redis-server;
docker run -d --name redis-server redis
