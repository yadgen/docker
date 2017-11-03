FROM alpine
MAINTAINER yadgen yadgen@gmail.com

ENV TIMEZONE Asia/Shanghai

RUN cp /etc/apk/repositories /etc/apk/repositories.bak \
    && echo "http://mirrors.aliyun.com/alpine/latest-stable/main" > /etc/apk/repositories \
    && echo "@community http://mirrors.aliyun.com/alpine/latest-stable/community" >> /etc/apk/repositories \
    && echo "@main http://mirrors.aliyun.com/alpine/latest-stable/main" >> /etc/apk/repositories \
    && apk update && apk upgrade \
    && apk add tzdata \
    && ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && echo "$TIMEZONE" >> /etc/timezone \
    && apk add vim \
    && echo -e "\nset tabstop=4\nset shiftwidth=4\nset expandtab\nset autoindent\nset smartindent\nset number\nset ruler\nset hlsearch\nset ignorecase\nset paste" >> /etc/vim/vimrc \
    && echo -e '\nalias ll="ls -al"' >> /etc/profile \
    && source /etc/profile

CMD ["sh"]