FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3.6
RUN apt-get install -y python3-pip
RUN apt-get install -y git

RUN mkdir /root/A /root/B /root/C /root/files
WORKDIR /root/files
RUN touch a.txt b.txt c.txt

WORKDIR /root
RUN git clone https://github.com/dolchimdae/assignment_week8.git
