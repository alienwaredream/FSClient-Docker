FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get -y install default-jdk

RUN apt-get -y install libpcap-dev

EXPOSE 2000

CMD java -jar finalspeed_client.jar