FROM ubuntu:16.04

ENV OMNICORE_VERSION v0.3.0

RUN apt-get update \
    && apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils \
    && apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get -y update \
    && apt-get -y install libdb4.8-dev libdb4.8++-dev \
    && apt-get -y install libminiupnpc-dev \
    && apt-get -y install libzmq3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install curl \
    && curl https://github.com/OmniLayer/omnicore/archive/$OMNICORE_VERSION.tar.gz \
    && tar zxf $OMNICORE_VERSION.tar.gz -C / \
    && rm $OMNICORE_VERSION.tar.gz

WORKDIR /omnicore

RUN ./autogen.sh \
    && ./configure --without-gui \
    && make -j4 \
    && make install \
    && rm -rf /omnicore

ENTRYPOINT ["omnicored"]
