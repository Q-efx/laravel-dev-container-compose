FROM php:8.3-fpm-alpine

WORKDIR /var/www/html

COPY src .

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions gd xdebug xdebug bcmath bz2 calendar csv ldap pdo_pgsql pgsql intl mcrypt memcached redis pkcs11 protobuf soap uuid tidy xdiff xmldiff xsl yaml zip sodium http intl uploadprogress uv @composer



RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN chown -R laravel /var/www/html

USER laravel
