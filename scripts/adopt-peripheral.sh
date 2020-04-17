#!/bin/bash
source client-resources.sh

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=1 \
  --parent_id=1`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=2 \
  --parent_id=1`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=3 \
  --parent_id=1`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=4 \
  --parent_id=1`
