#!/bin/bash

CLIENT_EXECUTABLE=organic_dump_pot_monitor_client
CA_CERT=ca_cert.pem
CLIENT_CERT=client_cert.pem
CLIENT_KEY=client_key.pem
TARGET_MACHINE=35.208.146.146
PORT=5555

`./$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --id=1`
