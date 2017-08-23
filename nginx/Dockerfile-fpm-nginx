ARG PHP_IMAGE_VERSION
FROM dmstr/php-yii2:${PHP_IMAGE_VERSION}

# Install Forego
RUN curl -L -o /usr/local/bin/forego https://github.com/jwilder/forego/releases/download/v0.16.1/forego
RUN chmod u+x /usr/local/bin/forego

# Install nginx
RUN apt-get update \
 && apt-get install -y --force-yes \
            nginx-full \
            cron \
        --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add configuration files
COPY image-files/ /

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
 && ln -sf /dev/stderr /var/log/nginx/error.log \
 && ln -sf /usr/sbin/cron /usr/sbin/crond

CMD ["forego", "start", "-r", "-f", "/root/Procfile"]

EXPOSE 80 443
