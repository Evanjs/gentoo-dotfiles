#!/usr/bin/env sh

# Terminate already running bar instances
killall -q $1

# Wait until the processes have been shut down
while pgrep -x $1 >/dev/null; do sleep 1; done

# Launch app
kdocker $1
