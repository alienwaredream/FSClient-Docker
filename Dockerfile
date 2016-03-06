FROM ubuntu:trusty

MAINTAINER jonechenug <jonechenug@gmail.com>

RUN apt-get update

RUN apt-get -y install libpcap-dev

RUN apt-get install git
