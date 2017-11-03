apk update && apk upgrade
apk add autoconf build-base linux-headers \
	libaio-dev \
	zlib-dev \
	php7-dev@community \
	php7-pear@community
sed -i "s/struct sigaction {/#ifndef __sighandler_t \ntypedef void (*__sighandler_t)(int);\n#endif\nstruct sigaction\n{/g" /usr/include/signal.h \
&& sed -i "s/union {void (*sa_handler)(int)/__sighandler_t sa_handler/g" /usr/include/signal.h \
&& sed -i "s/ -n / /" `which pecl` \
&& pecl install swoole \
&& apk del autoconf build-base linux-headers \
	libaio-dev \
	zlib-dev \
	php7-dev \
	php7-pear \
&& rm -rf /var/cache/apk && mkdir /var/cache/apk/ && rm -rf /tmp/*

# && cp /usr/lib/php7/modules/swoole.so /root/swoole.so \
# mv /root/swoole.so /usr/lib/php7/modules/swoole.so