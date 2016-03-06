FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get install default-jdk

RUN apt-get -y install libpcap-dev

RUN apt-get install git

RUN git clone git@github.com:jonechenug/FSClient-Docker.git

EXPOSE 2000

CMD java -jar finalspeed_client.jar