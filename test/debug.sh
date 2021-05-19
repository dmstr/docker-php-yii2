#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php-nginx}

echo "Running one-off command with xdebug"
PHP_ENABLE_XDEBUG=1 docker-compose run ${PHP_SERVICE} php -i | grep xdebug

echo ""
echo "Starting stack with xdebug"
PHP_ENABLE_XDEBUG=1 docker-compose up -d ${PHP_SERVICE}
sleep 5
docker-compose exec ${PHP_SERVICE} php -i -- | grep xdebug
docker-compose down -v

echo ""
echo "Starting stack without xdebug"
PHP_ENABLE_XDEBUG=0 docker-compose up -d ${PHP_SERVICE}
sleep 5
docker-compose exec ${PHP_SERVICE} "php -i" | grep xdebug
docker-compose down -v
