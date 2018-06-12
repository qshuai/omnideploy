FROM ubuntu:18.04
MAINTAINER qshuai <qishuai231@gmail.com>

RUN apt-get update \
    && apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils \
    && apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get install -y libdb4.8-dev libdb4.8++-dev \
    && apt-get install -y libminiupnpc-dev \
    && apt-get install -y libzmq3-dev

COPY ./omnicore /omnicore

CMD /bin/bash
