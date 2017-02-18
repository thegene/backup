# Description
Spins up an owncloud instance backed by a mariadb database. With Owncloud you
can run your own file backup application: https://owncloud.org/

This was intended for use on a local home server. It's probably not the most secure setup, so I wouldn't recommend running this in a publicly available place.

# Usage
Secrets are stored in s3 files, so you'll need your aws creds in order to access them, and specify the bucket and file name to use:

```
docker-compose up
  - e AWS_ACCESS_KEY_ID=<<ACCESS_KEY>>
  - e AWS_SECRET_ACCESS_KEY=<<SECRET_KEY>>
  - e AWS_DEFAULT_REGION=<<BUCKET_REGION>>
  - e SECRETS_BUCKET=<<BUCKET_NAME>>
  - e SECRETS_FILE=<<FILE_IN_BUCKET>>
```

## secrets.txt
`secrets.txt` should contain export commands for setting `ENV` variables:

``` 
export MYSQL_ROOT_PASSWORD=example
export MYSQL_DATABASE=testing
export MYSQL_USER=test
export MYSQL_PASSWORD=testing1
```
