#!/bin/bash
cd /root/kcptun/
cd /root/kcptun/vps/
./gsnova_vps_linux_amd64 >gsnova.log 2>&1 &
echo "gsnova started."
cd /root/kcptun/
./server_linux_amd64 -t "127.0.0.1:8080" -l ":4000" -mode normal > kcptun.log 2>&1 & 
echo "Kcptun started."
