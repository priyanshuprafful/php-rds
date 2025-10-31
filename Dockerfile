# 🐳 Use lightweight PHP 8.1 + Apache (Alpine-based)
FROM php:8.1-apache-alpine

# 🧩 Install mysqli extension for MySQL connection
RUN docker-php-ext-install mysqli \
    && rm -rf /var/cache/apk/* /tmp/*

# 📂 Set working directory
WORKDIR /var/www/html

# 🚫 Clean default Apache HTML files (optional)
RUN rm -rf /var/www/html/*

# 📁 Copy your app code
COPY . /var/www/html/

# 🔒 Secure permissions
RUN chown -R www-data:www-data /var/www/html

# 🌐 Expose HTTP port
EXPOSE 80

# 🚀 Start Apache when container runs
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
