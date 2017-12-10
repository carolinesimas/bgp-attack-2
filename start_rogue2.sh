#!/bin/bash

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R10 --cmd "/usr/lib/quagga/zebra -f conf/zebra-R10.conf -d -i /tmp/zebra-R10.pid > logs/R10-zebra-stdout"
sudo python run.py --node R10 --cmd "/usr/lib/quagga/bgpd -f conf/bgpd-R10.conf -d -i /tmp/bgpd-R10.pid > logs/R10-bgpd-stdout"
