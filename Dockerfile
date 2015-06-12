FROM jenkins:1.609.1
MAINTAINER Jonathan Hawk <jonathan@appertly.com>

USER root

# Install all the crap we need
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449 \
    && echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list \
    && apt-get update && apt-get install -y --no-install-recommends wget hhvm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget http://getcomposer.org/composer.phar \
    && chmod +x composer.phar \
    && mv composer.phar /usr/local/bin/composer

# Install some Jenkins plugins
ADD plugins.txt /plugins.txt
RUN plugins.sh /plugins.txt \
    && rm /plugins.txt

