#!/bin/sh

sudo apt update
sudo apt install x11vnc -y
> $HOME/.vnc/xstartup
mv xstartup $HOME/.vnc/
echo "Do you want to reboot now? [Y/n]"
read -r answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    reboot -h now
elif [[ "$answer" =~ ^[Nn]$ ]]; then
    exit 0
