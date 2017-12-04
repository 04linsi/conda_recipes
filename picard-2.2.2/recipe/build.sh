#!/bin/bash

SHARE=$PREFIX/share
BINARY_HOME=$PREFIX/bin

mkdir -p $SHARE/picard
mkdir -p $BINARY_HOME

cp -r $SRC_DIR/* $SHARE/picard
echo "java -jar $SHARE/picard/picard.jar \$@" > $BINARY_HOME/picard
chmod +x $BINARY_HOME/picard
