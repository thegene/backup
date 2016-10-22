FROM mariadb:10.1

MAINTAINER Eugene Westbrook

COPY secrets-entrypoint.sh /secrets-entrypoint.sh
RUN chmod +x /secrets-entrypoint.sh

# install aws cli
RUN apt-get update \
  && apt-get install -y python-software-properties curl unzip \
  && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" \
    -o "awscli-bundle.zip" \
  && unzip awscli-bundle.zip \
  && ./awscli-bundle/install -b /bin/aws

ENTRYPOINT ["/secrets-entrypoint.sh"]
CMD ["mysqld"]
