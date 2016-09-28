Supported tags and respective `Dockerfile` links
================================================

- `7.0-fpm`, `latest` ([7.0/fpm/Dockerfile](https://github.com/dmstr/docker-php-yii2/blob/master/7.0/Dockerfile-fpm))


Introduction
------------

This is a Docker PHP image containing extensions and libraries for Yii 2.0 Framework.


Features
--------

### CLI commands

 - `composer`
 - `codecept`
 - `phpunit`
 - `yii`
 

Configuration
-------------

### ENV variables

 - `GITHUB_API_TOKEN`
 - `DISPLAY_PHP_ERRORS`
 - `PHP_USER_ID`
 - `PHP_ENABLE_XDEBUG`

### Build ARGs

 - `GITHUB_API_TOKEN`

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


---

#### ![dmstr logo](http://t.phundament.com/dmstr-16-cropped.png) Built by [dmstr](http://diemeisterei.de)
