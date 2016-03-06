FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get -y install xfce4

RUN apt-get -y install default-jdk

RUN apt-get -y install libpcap-dev

COPY finalspeed_client.jar /usr/local/etc/finalspeed_client.jar

COPY client_config.json /usr/local/etc/client_config.json

COPY port_map.json /usr/local/etc/port_map.json

EXPOSE 2000

CMD sudo java -jar /usr/local/etc/finalspeed_client.jar