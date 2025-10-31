# 🐳 Use lightweight Alpine-based PHP + Apache image
FROM php:8.2-apache-alpine

# 🧰 Install required PHP extensions (mysqli) for MySQL connection
RUN docker-php-ext-install mysqli \
    && rm -rf /var/cache/apk/* /tmp/*

# ⚙️ Configure Apache to use /var/www/html as DocumentRoot
WORKDIR /var/www/html

# 🚫 Remove default Apache files (optional cleanup)
RUN rm -rf /var/www/html/*

# 📁 Copy your app code into the container
COPY . /var/www/html/

# 🔒 Set secure permissions
RUN chown -R www-data:www-data /var/www/html

# 🌐 Expose port 80 for web traffic
EXPOSE 80

# 🚀 Start Apache automatically
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
