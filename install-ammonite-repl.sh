#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.0.4"

if [ "$1" != "" ] && [ "$2" != "" ]; then
    SCALA_VERSION="$1"
    VERSION="$2"
elif [ "$1" != "" ]; then
    SCALA_VERSION="$1"
    VERSION=$FALLBACK_VERSION
else
    SCALA_VERSION="2.13"
    VERSION=$FALLBACK_VERSION
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
