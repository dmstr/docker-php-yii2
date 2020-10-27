#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php}

echo "Checking composer..."
docker-compose run --rm ${PHP_SERVICE} composer --version || exit 1

echo "Checking mysql client..."
docker-compose run --rm ${PHP_SERVICE} mysql --version || exit 1

echo "Checking git..."
docker-compose run --rm ${PHP_SERVICE} git --version || exit 1

echo "Checking npm..."
docker-compose run --rm ${PHP_SERVICE} npm --version || exit 1

echo "Done."