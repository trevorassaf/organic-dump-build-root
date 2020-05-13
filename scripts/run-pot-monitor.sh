#!/bin/bash

PWD=/home/pi/Documents/codez/sandbox/soil-moisture-sensor/organic-dump-app/
CLIENT_EXECUTABLE=$PWD/organic_dump_pot_monitor_client
CA_CERT=$PWD/ca_cert.pem
CLIENT_CERT=$PWD/client_cert.pem
CLIENT_KEY=$PWD/client_key.pem
CONFIG_FILE=$PWD/config.json
TARGET_MACHINE=35.208.146.146
PORT=5555


export LD_LIBRARY_PATH=/opt/gcc-9.1.0/lib:$PWD:$LD_LIBRARY_PATH

while :
do
  echo "Attempt to run organic_dump_pot_monitor_client"
  `$CLIENT_EXECUTABLE \
    --ca=$CA_CERT \
    --cert=$CLIENT_CERT \
    --key=$CLIENT_KEY \
    --ipv4=$TARGET_MACHINE \
    --port=$PORT \
    --config_file=$CONFIG_FILE \
    --id=1`

  sleep 5
done
