#!/bin/bash

while [ ! -f /execution-data/jwt.hex ]; do
  echo "Waiting for jwt.hex file..."
  sleep 5
done

exec ./nimbus_light_client "$@"