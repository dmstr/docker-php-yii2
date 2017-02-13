#!/bin/bash

# This script is run within the php containers on start

# Fail on any error
set -o errexit

# Setup config variables only available at runtime
sed -i "s|\${DISPLAY_PHP_ERRORS}|${DISPLAY_PHP_ERRORS}|" /usr/local/etc/php/conf.d/app.ini

# Set permissions based on ENV variable
if [ -x "usermod" ] ; then
    usermod -u ${PHP_USER_ID} www-data
fi

# Enable xdebug by ENV variable
if [ 0 -ne "${PHP_ENABLE_XDEBUG:-0}" ] ; then
    docker-php-ext-enable xdebug
    echo "Enabled xdebug"
fi

export PS1="\e[0;35mphd \e[0;37m\u container \h \e[0;32m\w \e[0;0m\n$ "

# Execute CMD
exec "$@"