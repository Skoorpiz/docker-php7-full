#!/bin/bash -x

if [ "$ENV" == "dev" ] || [ "$ENV" == "test" ]; then
    pecl install xdebug-2.9.8
    mv /tmp/xdebug.ini /usr/local/etc/php/conf.d/
else
    rm /tmp/xdebug.ini
fi