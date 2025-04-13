FROM php:7.4-fpm

# Установка драйвера PDO MySQL
RUN docker-php-ext-install pdo_mysql