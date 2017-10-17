FROM debian:8

MAINTAINER foospidy

RUN apt-get update && apt-get -y install curl vim software-properties-common apt-transport-https gnupg

RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" \
    && curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add - \
    && apt-get update \
    && apt-get -y install apache2 php5 git heroku

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');"

RUN mv /composer.phar /usr/local/bin/composer

WORKDIR /Heroku
