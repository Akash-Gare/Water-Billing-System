# Use official PHP image with Apache
FROM php:8.1-apache

# Copy your PHP source code into Apache's web root directory
COPY . /var/www/html/

# Expose port 80 for web access
EXPOSE 80

# Optional: Enable Apache rewrite module if your app needs it
RUN a2enmod rewrite

# Optional: Set working directory
WORKDIR /var/www/html
