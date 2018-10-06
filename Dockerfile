FROM twalter/maven-docker
MAINTAINER Filippo di Pisa
FROM maven:3-jdk-8
RUN apt-get update -y
RUN apt-get update
RUN apt-cache policy docker-engine
RUN apt-get update
RUN apt-get install -y docker-engine
RUN apt-get install -y python python-pip
RUN pip install --upgrade awscli s3cmd python-magic
RUN apt-get remove -y --purge python-pip
RUN rm -r /var/cache/apt/*
VOLUME /root/.aws
