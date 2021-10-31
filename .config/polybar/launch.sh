#/usr/bin/env bash

# Terminate Pre-Running
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch Bars
if type "xrandr"; then
  for m in $(xrandr -q | grep -w connected | cut -d" " -f1); do
    MONITOR=$m polybar --reload topbar &
  done
else
  polybar --reload topbar &
fi
