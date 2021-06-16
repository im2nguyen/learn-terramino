FROM php:apache

COPY app/ /var/www/html

COPY vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite
