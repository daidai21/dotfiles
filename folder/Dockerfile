FROM ubuntu:16.04

RUN cd /home \
    && apt-get update \  # install git
    && apt-get upgrade -y \
    && apt-get install -y git \
    && apt-get install libboost-all-dev \  # install boost
    && apt-get install g++ \
    && apt-get install gcc \
