# Description
Spins up an owncloud instance backed by a mariadb database. With Owncloud you
can run your own file backup application: https://owncloud.org/

# Usage
You must specify the mount point of your secrets directory.
This direcctory contains `secrets.txt` described below:
```
SECRETS_HOST_PATH=/PATH/TO/secrets \
docker-compose up
```

Once up and running, you can connect to the database at the admin prompt using
the settings from `secrets.txt`:
- `Database User`: `MYSQL_USER`
- `Database password`: `MYSQL_PASSWORD`
- `Database name`: `MYSQL_DATABASE`
- `Database host` ("localhost" by default): `db`

## secrets.txt
`secrets.txt` should contain export commands for setting `ENV` variables:

``` 
export MYSQL_ROOT_PASSWORD=example
export MYSQL_DATABASE=testing
export MYSQL_USER=test
export MYSQL_PASSWORD=testing1
```
