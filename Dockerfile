FROM isaackuang/alpine-base:3.8.0

RUN curl https://php.codecasts.rocks/php-alpine.rsa.pub -o /etc/apk/keys/php-alpine.rsa.pub && \
    echo "@php https://php.codecasts.rocks/v3.8/php-7.2" >> /etc/apk/repositories && \
    apk --no-cache --progress add \
    php7-fpm@php php7-cli@php

COPY docker-files/php-fpm/config /
