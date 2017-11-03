FROM yadgen/alpine
MAINTAINER yadgen yadgen@gmail.com

RUN addgroup -S git && adduser -S -D -G git git \
    && apk add git libc6-compat linux-pam openssh tar \
    && apk add gogs@community \
    && mkdir -p /usr/bin/custom/conf /var/lib/gogs/git /var/lib/gogs/avatars /var/lib/gogs/attachements \
    && chown -R git:git /usr/bin/custom /var/lib/gogs /var/log/gogs

USER git

CMD ["gogs", "web"]