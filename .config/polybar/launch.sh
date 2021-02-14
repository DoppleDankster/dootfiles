#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
monitors="HDMI-0 DP-4"
# Launch bar1 and bar2
for m in $monitors; do
  MONITOR=$m polybar -q -c ~/.config/polybar/config.ini main &
done
