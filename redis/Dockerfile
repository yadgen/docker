FROM yadgen/alpine
MAINTAINER yadgen yadgen@gmail.com

RUN addgroup -S redis && adduser -D -S -H -s /sbin/nologin -G redis redis \
    && apk add redis \
    && rm -f /var/cache/apk/* \
    && mkdir -p /var/data/redis \
    && mkdir -p /var/log/redis

CMD ["redis-server", "/etc/redis_6379.conf"]