Supported tags and respective `Dockerfile` links
================================================

- `7.0-fpm`, `7-fpm`, `fpm`, `latest` (7.0/fpm/Dockerfile)

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
 

Development
-----------

Building the images

    docker-compose build

Development bash    
    
    docker run -it dmstr/php bash
    
---

#### ![dmstr logo](http://t.phundament.com/dmstr-16-cropped.png) Built by [dmstr](http://diemeisterei.de)
