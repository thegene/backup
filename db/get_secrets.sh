#!/bin/sh
aws s3 cp s3://$SECRETS_BUCKET/$SECRETS_FILE /secrets/secrets.txt --region $AWS_DEFAULT_REGION
#gpg -d /secrets/secrets.gpg
