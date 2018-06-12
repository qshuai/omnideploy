#!/usr/bin/env bash

cd  /omnicore
./autogen.sh
./configure
make -j4
make install

while true;
do
    sleep 60
done
