#!/bin/bash

PWD=`pwd`
OUT_DIR=$PWD/../out
SERVER_EXECUTABLE=$OUT_DIR/code/organic-dump-server-application/repo/test_crypto_server
CERTS_DIR=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project/scripts
SERVER_CERT=$CERTS_DIR/server_cert.pem
SERVER_KEY=$CERTS_DIR/server_key.pem
CA_CERT=$CERTS_DIR/ca_cert.pem
TARGET_MACHINE_PORT=5555

`$SERVER_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$SERVER_CERT \
  --key=$SERVER_KEY \
  --port=$TARGET_MACHINE_PORT \
  --message='Test message from server'`

