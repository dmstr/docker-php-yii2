#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php}

docker-compose run --rm ${PHP_SERVICE} php --version
# this would match even if module is not loaded, eg. when commented out in opcache.ini
# docker-compose run --rm ${PHP_SERVICE} php -i | grep opcache

# better check loaded module list
docker-compose run --rm ${PHP_SERVICE} php -m | grep -i opcache
