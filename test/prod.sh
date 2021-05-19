#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php-nginx}

docker-compose run --rm ${PHP_SERVICE} php --version
# this would match even if module is not loaded, eg. when commented out in opcache.ini
# docker-compose run --rm ${PHP_SERVICE} php -i | grep opcache

echo "Checking GDlib..."
docker-compose run --rm ${PHP_SERVICE} php -m | grep -i gd 1>/dev/null || exit 1

echo "Checking opcache..."
docker-compose run --rm ${PHP_SERVICE} php -m | grep -i opcache 1>/dev/null || exit 1

echo "Checking composer auth..."
docker-compose run -e GITHUB_API_TOKEN=abcd12345 --rm ${PHP_SERVICE} sh -c '\
    composer && \
    [ -f ~/.composer/auth.json ] || exit 1 \
    '

echo "Done."
