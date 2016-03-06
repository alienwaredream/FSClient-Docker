FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get -y install default-jdk

RUN apt-get -y install libpcap-dev

COPY fs.jar /usr/local/etc/fs.jar

COPY client_config.json /usr/local/etc/client_config.json

COPY port_map.json /usr/local/etc/port_map.json
RUN cd /usr/local/etc/
EXPOSE 2000 

CMD sudo java -jar fs.jar