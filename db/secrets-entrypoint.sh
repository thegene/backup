#!/bin/bash

env $(/secrets/secrets.sh | tr "\\n" " ") /docker-entrypoint.sh mysqld
