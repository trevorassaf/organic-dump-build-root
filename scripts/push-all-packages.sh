#!/bin/bash

ALL_PACKAGES=(
  test_crypto_server \
  test_crypto_client \
  libcrypto.so \
  libssl.so \
  libprotobuf.so.3.10.0.0 \
  libtest_proto.so
)

PROJECT_ROOT=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project
DESTINATION_PATH=/home/pi/Documents/codez/projects/plantsandthings
TARGET_PI=pi2

packages_string=""

for package in ${ALL_PACKAGES[@]}; do
  package_path=$(find $PROJECT_ROOT -name $package)
  packages_string="$package_path $packages_string"
done

ssh $TARGET_PI rm $DESTINATION_PATH/*
scp $packages_string "$TARGET_PI:$DESTINATION_PATH"
