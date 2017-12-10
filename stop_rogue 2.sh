#!/bin/bash

sudo python run.py --node R10 --cmd "pgrep -f [z]ebra-R10 | xargs kill -9"
sudo python run.py --node R10 --cmd "pgrep -f [b]gpd-R10 | xargs kill -9"
