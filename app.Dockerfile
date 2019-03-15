FROM php:7.2-fpm

RUN apt-get update

RUN apt-get install -y libmcrypt-dev \
    libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo pdo_mysql mysqli 

RUN apt-get install -y zip unzip cron openssl nano libcurl4-openssl-dev pkg-config libssl-dev

RUN docker-php-ext-install bcmath

RUN echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini

RUN pecl install mongodb

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

RUN php composer-setup.php --filename=composer

RUN mv composer /usr/local/bin/composer

RUN php -r "unlink('composer-setup.php');"

RUN /etc/init.d/cron start
