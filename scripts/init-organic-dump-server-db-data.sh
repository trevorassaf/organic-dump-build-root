#!/bin/bash
source client-resources.sh
# Register Gundam Wing RPi and associated soil moisture sensors
GUNDAM_WING_RPI_ID=1
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_rpi' \
  --name='Gundam Wing' \
  --location='onion planter box 0x00'`

# Gundam Wing Sensor 1
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Zero' \
  --location='Slot 0x00' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=1 \
  --parent_id=$GUNDAM_WING_RPI_ID`

# Gundam Wing Sensor 2
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Sandrock' \
  --location='Slot 0x01' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=2 \
  --parent_id=$GUNDAM_WING_RPI_ID`

# Gundam Wing Sensor 3
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Deathscythe' \
  --location='Slot 0x02' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=3 \
  --parent_id=$GUNDAM_WING_RPI_ID`


# Register Gundam 00 RPi and associated soil moisture sensors
GUNDAM_00_RPI_ID=2
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_rpi' \
  --name='Gundam 00' \
  --location='onion planter box 0x01'`

# Gundam 00 Sensor 1
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Exia' \
  --location='Slot 0x00' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=4 \
  --parent_id=$GUNDAM_00_RPI_ID`

# Gundam 00 Sensor 2
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Raiser' \
  --location='Slot 0x01' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=5 \
  --parent_id=$GUNDAM_00_RPI_ID`

# Gundam 00 Sensor 3
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Dynames' \
  --location='Slot 0x02' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=6 \
  --parent_id=$GUNDAM_00_RPI_ID`

# Register Iron Blooded Orphans RPi and associated soil moisture sensors
IRON_BLOODED_ORPHANS_RPI_ID=3
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_rpi' \
  --name='Iron Blooded Orphans' \
  --location='garlic planter box 0x00'`

# Iron Blooded Orphans Sensor 1
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Barbatos' \
  --location='Slot 0x00' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=7 \
  --parent_id=$IRON_BLOODED_ORPHANS_RPI_ID`

# Iron Blooded Orphans Sensor 2
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Lupus' \
  --location='Slot 0x01' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=8 \
  --parent_id=$IRON_BLOODED_ORPHANS_RPI_ID`

# Iron Blooded Orphans Sensor 3
`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='register_soil_moisture_sensor' \
  --name='Shiden' \
  --location='Slot 0x02' \
  --floor=$SOIL_MOISTURE_SENSOR_FLOOR \
  --ceiling=$SOIL_MOISTURE_SENSOR_CEIL`

`$CLIENT_EXECUTABLE \
  --ca=$CA_CERT \
  --cert=$CLIENT_CERT \
  --key=$CLIENT_KEY \
  --ipv4=$TARGET_MACHINE \
  --port=$PORT \
  --action='set_peripheral_ownership' \
  --id=9 \
  --parent_id=$IRON_BLOODED_ORPHANS_RPI_ID`
