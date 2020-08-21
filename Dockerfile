FROM php:7.4-cli

RUN docker-php-source extract \
    && docker-php-ext-install pdo_mysql \
    && docker-php-source delete

RUN apt-get update \
    && apt-get install -y cron \
    && apt-get clean

