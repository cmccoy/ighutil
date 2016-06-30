FROM ubuntu:14.04
MAINTAINER Connor McCoy

RUN apt-get update -qq
RUN apt-get install -qq -y cython \
  python-pip \
  python-decorator \
  samtools

CMD vdjalign --help
