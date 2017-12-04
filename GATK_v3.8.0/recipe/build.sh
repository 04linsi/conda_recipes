#!/bin/bash

JAR=$PREFIX/jar
BINARY_HOME=$PREFIX/bin
mkdir -p $JAR
mkdir -p $BINARY_HOME
cp $SRC_DIR/GenomeAnalysisTK.jar $JAR/
echo "java -jar $JAR/GenomeAnalysisTK.jar \$@" > $BINARY_HOME/gatk
chmod +x $BINARY_HOME/gatk
