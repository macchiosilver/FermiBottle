#! /bin/sh

curl -s -L http://heasarc.gsfc.nasa.gov/FTP/software/lheasoft/release/heasoft-6.23src.tar.gz > heasoft-6.23.tar.gz
tar zxf heasoft-6.23.tar.gz
rm heasoft-6.23.tar.gz
cd heasoft-6.23/BUILD_DIR
./configure --prefix=$ASTROSOFT CFLAGS=-fpic \
  --with-components="heacore tcltk attitude heasptools heatools heagen Xspec ftools heasim"
./hmake && ./hmake install
