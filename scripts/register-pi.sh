#!/bin/bash
source client-resources.sh

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_rpi' \
  --name='Gundam Wing' \
  --location='onion planter box 0x00'`
