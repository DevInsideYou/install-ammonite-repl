#!/bin/bash

if [ "$1" == "" ]; then
    SCALA_VERSION="2.13"
    VERSION="1.6.9"
else
    SCALA_VERSION="$1"
    VERSION="$2"
fi

URL=https://github.com/lihaoyi/Ammonite/releases/download/$VERSION/$SCALA_VERSION-$VERSION

TARGET=/usr/local/bin/amm

# install curl
sudo apt install -yqqq curl

# install ammonite
sudo curl -L $URL -o $TARGET

sudo chmod +x $TARGET

echo

echo '"amm" is now on the path'

# remove yourself
rm $0
