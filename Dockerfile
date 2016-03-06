FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get install install default-jdk

RUN apt-get -y install libpcap-dev

RUN apt-get install git

RUN git clone git@github.com:jonechenug/FSClient-Docker.git

RUN java -jar finalspeed_client.jar