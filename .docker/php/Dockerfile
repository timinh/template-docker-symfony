FROM php:7.3-apache
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano libzip-dev libpng-dev libjpeg-dev libxpm-dev libfreetype6-dev zlib1g-dev libicu-dev g++ librabbitmq-dev -y
RUN docker-php-ext-configure intl
RUN docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/
RUN docker-php-ext-install mysqli pdo_mysql zip gd intl exif
RUN pecl install amqp
RUN docker-php-ext-enable intl amqp
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
RUN a2enmod ssl

RUN openssl req -x509 -nodes -days 365 \
    -subj  "/C=FR/ST=France/O=UCA/CN=localhost" \
     -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key \
     -out /etc/ssl/certs/localhost.crt;

RUN usermod -u 1000 www-data
WORKDIR /var/www/html
EXPOSE 80