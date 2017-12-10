#!/bin/bash

node=${7:-h7-1}
bold=`tput bold`
normal=`tput sgr0`

while true; do
    out=`sudo python run.py --node $node --cmd "curl -s 1.0.1.1"`
    date=`date`
    echo $date -- $bold$out$normal
    sleep 1
done
