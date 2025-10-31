FROM php:8.0-apache-alpine
RUN docker-php-ext-install mysqli \
 && rm -rf /var/cache/apk/* /tmp/*
WORKDIR /var/www/html
COPY . /var/www/html/
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
