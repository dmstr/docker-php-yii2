#!/bin/bash

# This script is run within the php containers on start

# Fail on any error
set -o errexit

# Set permissions based on ENV variable (debian only)
if [ -x "usermod" ] ; then
    usermod -u ${PHP_USER_ID} www-data
fi

# Enable xdebug by ENV variable
if [ 0 -ne "${PHP_ENABLE_XDEBUG:-0}" ] ; then
    docker-php-ext-enable xdebug
    echo "Enabled xdebug"
fi

# Execute CMD
exec "$@"