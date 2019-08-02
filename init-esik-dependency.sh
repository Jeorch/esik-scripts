#!/bin/bash
set -e 
echo 'Start yum install dependency.'
sudo yum -y install git gcc g++ gcc-c++ make pkgconfig openssl openssl-devel
echo 'Start git clone librdkafka.'
git clone https://github.com/edenhill/librdkafka.git
echo 'Start build && install librdkafka.'
cd librdkafka  && git checkout v1.1.0
./configure --prefix /usr
make
sudo make install
sudo ldconfig
cd ..
mv librdkafka /tmp/
echo 'Now you can run start-esik.sh'
