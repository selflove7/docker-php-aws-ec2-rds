FROM php:8.0-apache

WORKDIR /var/www/html

RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

COPY ./php-web-app /var/www/html/php-web-app

RUN chown -R www-data:www-data /var/www/html/php-web-app && \
    chmod -R 755 /var/www/html/php-web-app

RUN docker-php-ext-install mysqli

EXPOSE 80

CMD ["apache2-foreground"]
