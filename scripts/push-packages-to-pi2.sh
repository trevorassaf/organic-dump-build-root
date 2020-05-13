#!/bin/bash

ALL_PACKAGES=(
  organic_dump_client \
  organic_dump_pot_monitor_client \
  libgpio14.so \
  liborganic_dump_proto.so \
  libcrypto.so \
  libssl.so \
  libjsoncpp.so.1.9.3 \
  libjsoncpp.so.23 \
  libjsoncpp.so \
  libprotobuf.so.3.10.0.0 \
)

PROJECT_ROOT=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project
#DESTINATION_PATH=/home/pi/Documents/codez/projects/plantsandthings
DESTINATION_PATH=/home/pi/Documents/codez/sandbox/soil-moisture-sensor/organic-dump-app
TARGET_PI=pi2

packages_string=""

for package in ${ALL_PACKAGES[@]}; do
  package_path=$(find $PROJECT_ROOT -name $package)
  packages_string="$package_path $packages_string"
done

LOCAL_PACKAGES=(
  client_cert.pem
  client_key.pem
  ca_cert.pem
  run-pot-monitor.sh
  config.json
)

for package in ${LOCAL_PACKAGES[@]}; do
  package_path=$(find $PROJECT_ROOT/scripts -name $package)
  packages_string="$package_path $packages_string"
done

echo $packages_string

ssh $TARGET_PI rm $DESTINATION_PATH/*
scp $packages_string "$TARGET_PI:$DESTINATION_PATH"
