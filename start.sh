#!/bin/bash
cd /root/kcptun/
cd /vps/
./gsnova_vps_linux_amd64 >gsnova.log 2>&1 &
echo "gsnova started."
cd /root/kcptun/
./server_linux_amd64 -l :29900 -t 127.0.0.1:8080 -key test -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -mode fast2 > kcptun.log 2>&1 & 
echo "Kcptun started."
