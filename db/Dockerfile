FROM mariadb:10.1

MAINTAINER Eugene Westbrook

COPY secrets-entrypoint.sh /secrets-entrypoint.sh
RUN chmod +x /secrets-entrypoint.sh

ENTRYPOINT ["/secrets-entrypoint.sh"]
CMD ["mysqld"]
