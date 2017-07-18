#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php}

docker-compose run --rm ${PHP_SERVICE} composer --version || exit 1
docker-compose run --rm ${PHP_SERVICE} mysql --version || exit 1
docker-compose run --rm ${PHP_SERVICE} git --version || exit 1
docker-compose run --rm ${PHP_SERVICE} npm --version || exit 1