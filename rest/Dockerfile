# definindo a imagem base
FROM php:7.4-cli

# comandos a serem executados
## instalando as dependências
RUN apt-get update && \
    apt-get install libzip-dev libicu-dev sqlite3 -y

RUN docker-php-ext-install zip && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl

## instalando o composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

## instalando o laminas
RUN php composer.phar create-project laminas-api-tools/api-tools-skeleton:1.7.0

# copiando o banco de dados
COPY database.sqlite api-tools-skeleton/database.sqlite