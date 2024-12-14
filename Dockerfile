# Use the official PHP image with Apache
FROM php:8.3-apache

# Copy application files into the container
COPY . /var/www/html/

# Ensure proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose the web server port
EXPOSE 80

# Start Apache when the container starts
CMD ["apache2-foreground"]
