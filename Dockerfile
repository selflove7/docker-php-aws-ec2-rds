# Use an official PHP image as the base image
FROM php:8.0-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Add the ServerName directive to the Apache configuration
RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

# Copy PHP application code into the container
COPY ./php-web-app /var/www/html/php-web-app

# Change ownership and permissions
RUN chown -R www-data:www-data /var/www/html/php-web-app && \
    chmod -R 755 /var/www/html/php-web-app

# Install the mysqli extension for PHP
RUN docker-php-ext-install mysqli
#RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Expose port 80 for Apache
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
