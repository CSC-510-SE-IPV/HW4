#!/bin/bash

# Find the PID of the infinite.sh script
pid=$(ps aux | grep '[i]nfinite.sh' | awk '{print $2}')

if [ -n "$pid" ]; then
  echo "Killing infinite.sh process with PID: $pid"
  kill -9 "$pid"
else
  echo "No infinite.sh process found."
fi
