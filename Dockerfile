FROM debian

MAINTAINER foospidy

RUN apt-get update && apt-get -y install curl vim software-properties-common apt-transport-https gnupg

RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" \
    && curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add - \
    && apt-get update \
    && apt-get -y install apache2 php5 git heroku

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');"

RUN mv /composer.phar /usr/local/bin/composer

WORKDIR /Heroku
