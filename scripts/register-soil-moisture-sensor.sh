#!/bin/bash
source client-resources.sh

# Register Gundam Zero Sensor
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Zero' \
  --location='Slot 0x00' \
  --floor=10800 \
  --ceiling=20100`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=1 \
  --parent_id=1`

# Register Sandrock Sensor
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Sandrock' \
  --location='Slot 0x01' \
  --floor=10900 \
  --ceiling=20000`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=2 \
  --parent_id=1`

# Register Deathscythe Sensor
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Deathscythe' \
  --location='Slot 0x02' \
  --floor=10900 \
  --ceiling=20400`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=3 \
  --parent_id=1`

# Register Shenlong Sensor
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Shenlong' \
  --location='Slot 0x03' \
  --floor=10900 \
  --ceiling=20400`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=4 \
  --parent_id=1`
