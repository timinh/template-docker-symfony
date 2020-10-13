FROM php:7.3-apache
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano libzip-dev libpng-dev zlib1g-dev libicu-dev g++ librabbitmq-dev -y
RUN docker-php-ext-configure intl
RUN docker-php-ext-install mysqli pdo_mysql zip gd intl
RUN pecl install amqp
RUN docker-php-ext-enable intl amqp
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
WORKDIR /var/www/html
EXPOSE 80