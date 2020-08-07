### See https://github.com/dunglas/symfony-docker for good Dockerfile example
FROM library/mysql:5.7 AS mysql

FROM php:7.4-fpm-alpine AS php

RUN apk add --no-cache \
        bash \
        git \
    ;

RUN docker-php-ext-install pdo pdo_mysql