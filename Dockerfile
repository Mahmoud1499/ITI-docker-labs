# Use the official PHP image as the base image
FROM php:7.4-apache

# Copy  application files to the container's web root directory
COPY ./myapp /var/www/html/

# Set the working directory to the container's web root directory
WORKDIR /var/www/html/

# Install any required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80 for Apache to listen on
EXPOSE 80
