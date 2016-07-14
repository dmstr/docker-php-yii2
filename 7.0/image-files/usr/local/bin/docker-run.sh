#!/bin/bash

# This script is run within the php containers on start

# Fail on any error
set -o errexit

# Setup config variables only available at runtime
sed -i "s|\${DISPLAY_PHP_ERRORS}|${DISPLAY_PHP_ERRORS}|" /usr/local/etc/php/conf.d/app.ini

# Work around permission errors locally TODO only if local
usermod -u ${PHP_USER_ID} www-data

if [ -n "$PHP_ENABLE_XDEBUG" ] ; then
    docker-php-ext-enable xdebug
fi
sed -i "s|\${FASTCGI_PASS_HOST}|${FASTCGI_PASS_HOST}|" /etc/nginx/nginx.conf

# Run the command sent as command line arguments
php-fpm
