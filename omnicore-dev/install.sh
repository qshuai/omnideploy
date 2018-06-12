#!/usr/bin/env bash

cd  /omnicore
./autogen.sh
./configure
make -j4
make install
