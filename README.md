Supported tags and respective `Dockerfile` links
================================================

- `7.0-fpm-1.9`, `7.0-fpm` ([7.0/fpm/Dockerfile-fpm](php-7.0/Dockerfile-fpm))
- `7.1-fpm-2.0-beta1`, `7.1-fpm`, `latest` ([7.1/fpm/Dockerfile-fpm](php-7.1/Dockerfile-fpm))
- `7.1-fpm-2.0-beta1-nginx`, `7.1-fpm-nginx` ([7.1/fpm/Dockerfile-fpm-nginx](nginx/Dockerfile-fpm-nginx))
- `7.1-fpm-2.0-beta1-alpine-nginx`, `7.1-fpm-alpine-nginx` ([7.1/fpm/Dockerfile-fpm-alpine-nginx](nginx/Dockerfile-fpm-alpine-nginx))

:information_source: `7.0-fpm-1.9` is based on PHP *7.0.15*

### Experimental

- :b: `7.0-fpm-1.9-nginx`, `7.0-fpm-nginx` ([7.0/fpm/Dockerfile-fpm-nginx](nginx/Dockerfile-fpm-nginx))
- :b: `7.0-fpm-1.9-alpine-nginx`, `7.0-fpm-alpine-nginx` ([7.0/fpm/Dockerfile-fpm-alpine-nginx](nginx/Dockerfile-fpm-alpine-nginx))
- :a: `7.0-fpm-1.9-alpine-nginx-xdebug`, `7.0-fpm-alpine-nginx-xdebug` ([7.0/fpm/Dockerfile-fpm-alpine-nginx-xdebug](nginx/Dockerfile-fpm-alpine-nginx-xdebug))
- :a: `7.1-fpm-2.0-beta1-alpine-nginx-xdebug`, `7.1-fpm-alpine-nginx-xdebug` ([7.1/fpm/Dockerfile-fpm-alpine-nginx-xdebug](nginx/Dockerfile-fpm-alpine-nginx-xdebug))

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
 - `yii`

#### Availability matrix

| Command  | fpm  | fpm-alpine | fpm-alpine-nginx | fpm-alpine-nginx-debug |
|----------|------|------------|------------------|------------------------|
| *xdebug* | :ok: | :x:  | :x:  | :ok: |
| codecept | :ok: | :ok: | :ok: | :ok: |
| composer | :ok: | :ok: | :ok: | :ok: |
| phpunit  | :ok: | :ok: | :ok: | :ok: |
| yii      | :ok: | :ok: | :ok: | :ok: |
| npm      | :ok: | :ok: | :ok: | :ok: |

Configuration
-------------

### ENV variables

 - `GITHUB_API_TOKEN`
 - `DISPLAY_PHP_ERRORS`
 - `PHP_USER_ID`
 - `PHP_ENABLE_XDEBUG`


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
