FROM php:8.1-apache-bullseye

RUN docker-php-ext-install mysqli \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]


# Use official PHP image with Apache web server
# FROM php:8.2-apache


# # Install mysqli extension
# RUN docker-php-ext-install mysqli

# # Copy your PHP app files into the web server directory
# COPY . /var/www/html/

# # Expose port 80 to access the app in the browser
# EXPOSE 80

# # Start Apache server when the container runs
# CMD ["apache2-foreground"]
