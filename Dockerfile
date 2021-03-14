FROM php:apache-buster


RUN apt-get update &&\
    apt-get install -y apt-utils &&\
    apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev &&\
    apt-get install -y git   &&\
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" &&\
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer  &&\
    pecl install mongodb &&\
    echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/docker-php-ext-mongodb.ini

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf