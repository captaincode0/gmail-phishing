FROM ubuntu:xenial

RUN apt update \
  && apt install --yes wget unzip software-properties-common \
  && add-apt-repository ppa:ondrej/php \
  && apt update

CMD tail -f /dev/null
