#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
exec i3 &>> "/var/log/i3.log"
/bin/sh $HOME/.config/nvidia/dual_monitor
