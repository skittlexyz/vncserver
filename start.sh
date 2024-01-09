#!/bin/sh

# phone size: 1200x540
# pc size: 2560x1080

sudo vncserver -geometry 1200x540
printf "%s" "Running on $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'):1"
