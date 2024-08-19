# Dockerfile
FROM php:8.0-fpm

# Instalar extensiones necesarias
RUN docker-php-ext-install pdo pdo_mysql

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . .

RUN composer install

CMD ["php-fpm"]

# Exponer el puerto 80
EXPOSE 8003