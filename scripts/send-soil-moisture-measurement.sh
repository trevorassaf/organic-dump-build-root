#!/bin/bash
source client-resources.sh

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='send_soil_moisture_measurement' \
  --id=1 \
  --measurement=0.5`
