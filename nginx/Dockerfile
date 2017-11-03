FROM yadgen/alpine
MAINTAINER yadgen yadgen@gmail.com

RUN addgroup -S nginx && adduser -D -S -H -s /sbin/nologin -G nginx nginx \
    && apk add nginx \
    && rm -f /var/cache/apk/* \
    && mkdir -p /var/run \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/www/html

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]