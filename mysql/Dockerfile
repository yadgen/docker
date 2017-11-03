FROM yadgen/alpine
MAINTAINER yadgen yadgen@gmail.com

RUN addgroup -S mysql && adduser -D -S -H -s /sbin/nologin -G mysql mysql \
    && apk add bash mariadb mariadb-client \
    && rm -f /var/cache/apk/* \
    && mkdir -p /var/run/mysqld /var/lib/mysql /var/log/mysql \
    && chown -R mysql:mysql /var/run/mysqld /var/lib/mysql /var/log/mysql

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["mysqld"]