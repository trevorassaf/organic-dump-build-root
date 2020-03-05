#!/bin/bash

OUT_PACKAGES=(
  test_crypto_server \
  test_crypto_client \
  test_mysql_connector \
  libcrypto.so \
  libssl.so \
  libprotobuf.so.3.10.0.0 \
  libtest_proto.so
)

PROJECT_ROOT=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project
DESTINATION_PATH=/home/bozkurtus/codez/plantsandthings/organic_dump_server
TARGET_MACHINE=35.208.146.146
SSH_KEY_PATH=~/.ssh/trevor-assaf-gcp-ssh-key
SSH_USERNAME=bozkurtus

function upload_packages() {
  packages_string=""
  packages=("$@")

  for package in ${packages[@]}; do
    package_path=$(find $PROJECT_ROOT -name $package)
    packages_string="$package_path $packages_string"
  done

  scp -i $SSH_KEY_PATH -r $packages_string "$SSH_USERNAME@$TARGET_MACHINE:$DESTINATION_PATH"
}

ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE" rm $DESTINATION_PATH/*
ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE" mkdir -p $DESTINATION_PATH
upload_packages "${OUT_PACKAGES[@]}"
