#!/bin/bash

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R5 --cmd "/usr/lib/quagga/zebra -f conf/zebra-R5.conf -d -i /tmp/zebra-R5.pid > logs/R5-zebra-stdout"
sudo python run.py --node R5 --cmd "/usr/lib/quagga/bgpd -f conf/bgpd-R5.conf -d -i /tmp/bgpd-R5.pid > logs/R5-bgpd-stdout"
