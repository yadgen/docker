FROM yadgen/alpine
MAINTAINER yadgen yadgen@gmail.com

RUN addgroup -S php && adduser -D -S -H -s /sbin/nologin -G php php \
    && apk add php7@community \
        php7-fpm@community \
        php7-opcache@community \
        php7-session@community \
        php7-xml@community \
        php7-ctype@community \
        php7-gd@community \
        php7-json@community \
        php7-posix@community \
        php7-curl@community \
        php7-dom@community \
        php7-pdo@community \
        php7-pdo_mysql@community \
        php7-sockets@community \
        php7-zlib@community \
        php7-mcrypt@community \
        php7-mysqli@community \
        php7-sqlite3@community \
        php7-bz2@community \
        php7-phar@community \
        php7-posix@community \
        php7-zip@community \
        php7-calendar@community \
        php7-iconv@community \
        php7-imap@community \
        php7-soap@community \
        php7-dev@community \
        php7-redis@community \
        php7-mbstring@community \
        php7-xdebug@community \
        php7-exif@community \
        php7-xsl@community \
        php7-ldap@community \
        php7-openssl@community \
        php7-bcmath@community \
    && rm -f /var/cache/apk/* \
    && mkdir -p /var/run \
    && mkdir -p /var/log/php

# build swoole.so
COPY build_swoole_so.sh /root/
RUN chmod 777 /root/build_swoole_so.sh && sh /root/build_swoole_so.sh

CMD ["php-fpm7"]