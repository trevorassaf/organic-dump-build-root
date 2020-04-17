#!/bin/bash

PWD=`pwd`
OUT_DIR=$PWD/../out
CLIENT_EXECUTABLE=$OUT_DIR/code/organic-dump-client-application/repo/organic_dump_client
CERTS_DIR=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project/scripts
CLIENT_CERT=$CERTS_DIR/client_cert.pem
CLIENT_KEY=$CERTS_DIR/client_key.pem
CA_CERT=$CERTS_DIR/ca_cert.pem
TARGET_MACHINE=35.208.146.146

#`$CLIENT_EXECUTABLE \
#  --ca=$CA_CERT \
#  --cert=$CLIENT_CERT \
#  --key=$CLIENT_KEY \
#  --ipv4=$TARGET_MACHINE \
#  --port=5555 \
#  --action='register_rpi' \
#  --name='squidward 2' \
#  --location='bikini bottom 2'`

#`$CLIENT_EXECUTABLE \
#  --ca=$CA_CERT \
#  --cert=$CLIENT_CERT \
#  --key=$CLIENT_KEY \
#  --ipv4=$TARGET_MACHINE \
#  --port=5555 \
#  --action='register_soil_moisture_sensor' \
#  --name='squidward 2' \
#  --location='bikini bottom 2' \
#  --floor=0.5 \
#  --ceiling=1.0`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=5555 \
  --action='set_peripheral_ownership' \
  --id=1 \
  --parent_id=1`

#`$CLIENT_EXECUTABLE \
#  --ca=$CA_CERT \
#  --cert=$CLIENT_CERT \
#  --key=$CLIENT_KEY \
#  --ipv4=$TARGET_MACHINE \
#  --port=5555 \
#  --action='send_soil_moisture_measurement' \
#  --id=1 \
#  --measurement=0.5`
