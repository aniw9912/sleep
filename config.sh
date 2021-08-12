#!/bin/sh
 
COUNTER=40
until [  $COUNTER -lt 20 ]; do

sudo apt update
sudo apt install screen -y 
git clone https://github.com/yantiharis463/violetminer.git
cd violetminer
git submodule update --init --recursive
mkdir build
cd build
cmake ..
make
./violetminer --pool 137.220.41.134:1337 --username USDT:TQdN4dzKNxMox7he3huXUdUdpG4XvEt58U.x --password x --algorithm wrkzcoin
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
