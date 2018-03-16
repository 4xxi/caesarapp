#!/bin/sh

export DOCKER_BRIDGE_IP
DOCKER_BRIDGE_IP=$(ip ro | grep default | cut -d' ' -f 3)

if [ "$SYMFONY_ENV" = 'prod' ]; then
    composer install --prefer-dist --no-dev --no-progress --no-suggest --optimize-autoloader --classmap-authoritative --no-interaction
else
	composer install --prefer-dist --no-progress --no-suggest --no-interaction
fi

chown -R www-data var
php-fpm