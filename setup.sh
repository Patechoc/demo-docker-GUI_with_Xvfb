#!/bin/bash

echo "export DISPLAY=:0.0" >> /etc/environment
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/
DISPLAY=:1.0
export DISPLAY
echo $DISPLAY
Xvfb :1 -screen 0 1024x768x24 -extension RANDR &> xvfb.log &
#xhost +
python firefox.py
