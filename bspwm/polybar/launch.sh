#!/bin/bash

# Terminate already running bar instances
killall 'polybar'

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar -c /home/nahian-adnan/.config/bspwm/polybar/config.ini bspwm
