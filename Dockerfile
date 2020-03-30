FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /app
COPY . /app

CMD php artisan serve --host=0.0.0.0 --port=9000
EXPOSE 9000