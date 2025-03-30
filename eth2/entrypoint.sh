#!/bin/bash

while [ ! -f /execution-data/jwtsecret ]; do
  echo "Waiting for jwtsecret file..."
  sleep 5
done

exec ./nimbus_light_client "$@"