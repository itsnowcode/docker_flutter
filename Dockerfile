FROM node:21.7.3-bullseye-slim


ENV LC_ALL C.UTF-8

RUN apt-get update \
 && apt-get install -y openjdk-17-jdk-headless --no-install-recommends \
 && apt-get install -y git \
 && apt-get install -y curl \
 && apt-get install -y unzip \
 && apt-get install -y lcov \
 && rm -rf /var/lib/apt/lists/* 

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

RUN cd / \
 && git clone https://github.com/flutter/flutter.git \
 && cd flutter/ \
 && git checkout 3.19.5

ENV PATH $PATH:/flutter/bin

RUN flutter --version

