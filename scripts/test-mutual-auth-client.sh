#!/bin/bash

PWD=`pwd`
OUT_DIR=$PWD/../out
CLIENT_EXECUTABLE=$OUT_DIR/code/organic-dump-client-application/repo/test_crypto_client
CERTS_DIR=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project/scripts
CLIENT_CERT=$CERTS_DIR/client_cert.pem
CLIENT_KEY=$CERTS_DIR/client_key.pem
CA_CERT=$CERTS_DIR/ca_cert.pem
#TARGET_MACHINE_IPV4=127.0.0.1
TARGET_MACHINE_IPV4=35.208.146.146
TARGET_MACHINE_PORT=5555

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE_IPV4 \
  --port=$TARGET_MACHINE_PORT \
  --message='Test message from client'`

