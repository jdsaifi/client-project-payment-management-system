FROM php:8.2-fpm-alpine

RUN apk update

RUN apk add git \
        curl \
        libpng-dev \
        libwebp-dev \
        libpq-dev \
        zip \
        unzip

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install pdo pdo_pgsql pgsql

# Set working directory
WORKDIR /var/www