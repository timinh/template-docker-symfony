FROM php:7.3-apache
RUN apt-get update && apt-get upgrade -y
RUN apt-get install libzip-dev libpng-dev zlib1g-dev -y
RUN docker-php-ext-install mysqli pdo_mysql zip gd
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
WORKDIR /var/www/html
EXPOSE 80