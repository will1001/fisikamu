FROM php:7.0-apache

COPY . /var/www/html

WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y libfreetype6-dev libjpeg62-turbo-dev && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install mbstring && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/  &&  \
    docker-php-ext-install gd
RUN a2enmod rewrite
RUN service apache2 restart

