# Description
Wrapper around mariadb container allowing for mounting a secrets file.

# Usage
In order to keep secrets secret, I went with a mounted secrets volume approach.
This is used primarily to instantiate the mariadb instance. For full details
of the ENV variables needed for mariadb: https://hub.docker.com/_/mariadb/

```
docker run \
  -v PATH/TO/SECRETS/DIR:/secrets
  thegene/mariadb-with-secrets
```

## Secrets file
The database container expects a secrets file mounted at `/secrets/secrets.txt`

Example secrets:
```
export MYSQL_ROOT_PASSWORD=soopersecretpassword
export MYSQL_DATABASE=dev
export MYSQL_USER=dev
export MYSQL_PASSWORD=dev123
```
