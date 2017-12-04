#!/bin/bash

SHARE=$PREFIX/share
BINARY_HOME=$PREFIX/bin
mkdir -p $SHARE/SOAPfuse
mkdir -p $BINARY_HOME
cp -r $SRC_DIR/* $SHARE/SOAPfuse
echo "export PERL5LIB=\$PERL5LIB:$SHARE/SOAPfuse/source/bin/perl_module" > $BINARY_HOME/SOAPfuse-S00-Generate_SOAPfuse_database.pl
echo "perl $SHARE/SOAPfuse/source/SOAPfuse-S00-Generate_SOAPfuse_database.pl \$@" >> $BINARY_HOME/SOAPfuse-S00-Generate_SOAPfuse_database.pl
chmod +x $BINARY_HOME/SOAPfuse-S00-Generate_SOAPfuse_database.pl
echo "export PERL5LIB=\$PERL5LIB:$SHARE/SOAPfuse/source/bin/perl_module" > $BINARY_HOME/SOAPfuse-RUN.pl
echo "perl $SHARE/SOAPfuse/SOAPfuse-RUN.pl \$@" >> $BINARY_HOME/SOAPfuse-RUN.pl
chmod +x $BINARY_HOME/SOAPfuse-RUN.pl
