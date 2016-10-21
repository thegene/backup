#!/bin/bash

eval $(cat /secrets/secrets.txt)

docker-entrypoint.sh "$@"
