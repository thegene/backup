#!/bin/bash

echo "SOMETHING";
env $(/secrets/secrets.sh | tr "\\n" " ") /docker-entrypoint.sh mysqld
