FROM nginx:alpine
MAINTAINER Jemy Zhang <jemy.zhang@gmail.com>

ENV LANG C.UTF-8
ENV TZ 'Asia/Shanghai'
ENV PARAMS ''
ENV UPDATE 'true'

RUN apk upgrade --update \
    && apk --no-cache add -f bash openssl curl socat tzdata ca-certificates \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
