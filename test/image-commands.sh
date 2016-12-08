#!/usr/bin/env bash

PHP_SERVICE=${PHP_SERVICE-php}

docker-compose run --rm ${PHP_SERVICE} php --version
docker-compose run --rm ${PHP_SERVICE} composer --version
docker-compose run --rm ${PHP_SERVICE} codecept --version
docker-compose run --rm ${PHP_SERVICE} phpunit --version
docker-compose run --rm ${PHP_SERVICE} mysql --version
docker-compose run --rm ${PHP_SERVICE} git --version