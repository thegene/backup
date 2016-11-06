FROM mariadb:10.1

MAINTAINER Eugene Westbrook

COPY secrets-entrypoint.sh /secrets-entrypoint.sh
COPY util-entrypoint.sh /util-entrypoint.sh
RUN chmod +x /secrets-entrypoint.sh
RUN chmod +x /util-entrypoint.sh

COPY mysql.sh /mysql.sh
RUN chmod +x /mysql.sh

ENTRYPOINT ["/secrets-entrypoint.sh"]
CMD ["mysqld"]
