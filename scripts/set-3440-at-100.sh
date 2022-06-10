#!/bin/bash -eu
RES="3440x1440"
RR="100"

# Taken from :
# https://cowboyprogrammer.org/2016/05/set-refresh-rate-of-screen-from-script/

# Do for every output, so that it doesn't matter where you plug in
# your monitor.
for output in $(xrandr | grep "DP-" | sed -e "s/\(DP-.\).*/\1/"); do
  echo "Trying to set mode on $output"
  if xrandr --output "$output" --mode "$RES" -r "$RR"; then
    echo "Success: $RES $RR Hz set on $output"
  fi
done
