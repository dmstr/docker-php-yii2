Supported tags and respective `Dockerfile` links
================================================

- `7.x-fpm-x.x`, `latest` ([Dockerfile](php/Dockerfile-fpm))
- `7.x-fpm-x.x-nginx`, `latest-nginx` ([Dockerfile](nginx/Dockerfile-fpm-nginx))
- `7.x-fpm-x.x-alpine`, `latest-alpine` ([Dockerfile](php/Dockerfile-fpm))
- `7.x-fpm-x.x-alpine-nginx`, `latest-alpine-nginx` ([Dockerfile](nginx/Dockerfile-fpm-alpine-nginx))

### Branches

- *`release/4.x` branch builds also `latest` images*
- *`release/5.x` branch is deprectated*
- *`release/6.x` branch uses supervisor instead of forego*

:information_source: See repository tags for full version numbers

See all available [image tags](https://hub.docker.com/r/dmstr/php-yii2/tags/)

[![build status](https://git.hrzg.de/dmstr/docker-php-yii2/badges/master/build.svg)](https://git.hrzg.de/dmstr/docker-php-yii2/commits/master)


Introduction
------------

This is a Docker PHP image containing PHP extensions and composer packages and libraries for *Yii 2.0 Framework*. 
It is primarily intended to build Yii 2.0 applications `FROM` this image, see below for available application templates.

There is also an `nginx` flavour available for this image, in which PHP and nginx are managed with forego.


Features
--------

### CLI commands

 - `composer`
 - `codecept`
 - `phpunit`
 - `npm`

#### Extensions

 - soap
 - zip
 - curl
 - bcmath
 - exif
 - gd
 - iconv
 - intl
 - mbstring
 - opcache
 - pdo_mysql
 - pdo_pgsql
 - memcache - *Alpine only*
 - xdebug - *installed, but not loaded by default*

Configuration
-------------

### ENV variables

 - `GITHUB_API_TOKEN`
 - `PHP_ENABLE_XDEBUG`
 - `PHP_USER_ID` (debian only)


Development
-----------

Building the images

    docker-compose build

Development bash    

    docker run -it dmstr/php-yii2 bash


Resources
---------  

- [GitHub project](https://github.com/dmstr/docker-php-yii2)
- [GitLab build](https://git.hrzg.de/dmstr/docker-php-yii2/builds)
- [DockerHub image](https://hub.docker.com/r/dmstr/php-yii2/)
- [yii2-app](https://github.com/dmstr/docker-yii2-app) minimal application tempplate
- [phd5](https://github.com/dmstr/phd5-app) standard application template
- [phd5](https://github.com/dmstr/docs-phd5) documentation

---

#### ![dmstr logo](http://t.phundament.com/dmstr-16-cropped.png) Built by [dmstr](http://diemeisterei.de)
