# Description
Spins up an owncloud instance backed by a mariadb database. With Owncloud you
can run your own file backup application: https://owncloud.org/

# idea on how to do secrets better:
1. secrets container downloads specified secrets file, adds to /secrets volume
2. call maria image with secrets entrypoint, which decrypts the secrets file using gpg and pipes that to the mysql entrypoint

# Usage
Secrets are stored in s3 files, so you'll need your aws creds in order to access them, and specify the bucket and file name to use:

```
docker-compose run
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
