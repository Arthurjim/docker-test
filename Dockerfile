FROM php:7.2-apache


LABEL maintainer="Arturin"
# ENTRYPOINT [ "/bin/cat" ]

# ENTRYPOINT [ "/bin/hecho" ]

# CMD ["Hola Mundo"]
# ENTRYPOINT [ "/etc/hosts" ]


EXPOSE 80
ENV DISPLAY_ERRORS="On"

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo_mysql

COPY index.php /var/www/html/
COPY php.ini /usr/local/etc/php/php.ini
# CMD [ "/etc/hosts"]