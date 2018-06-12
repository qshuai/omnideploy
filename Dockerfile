FROM ubuntu:18.04
MAINTAINER qshuai <qishuai231@gmail.com>

RUN apt-get update \
    && apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils \
    && apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev \
    && apt-get install software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get install libdb4.8-dev libdb4.8++-dev \
    && apt-get install libminiupnpc-dev \
    && apt-get install libzmq3-dev

COPY ./omnicore /omnicore
WORKDIR /omnicore
RUN ./autogen.sh \
    && ./configure \
    && make -j4 \
    && make install

COPY ./bitcoin.conf /root/.omnicore/

CMD ./src/omnicored -txindex -datadir=/root/.omnicore
