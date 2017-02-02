#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php}

docker-compose run --rm ${PHP_SERVICE} php --version
docker-compose run --rm ${PHP_SERVICE} php -i | grep opcache
