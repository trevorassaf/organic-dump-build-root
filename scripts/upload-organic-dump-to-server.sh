#!/bin/bash

# Instance 2 ssh command
# ssh -i ~/.ssh/trevor-assaf-gcp-ssh-key bozkurtus@35.208.146.146

OUT_PACKAGES=(
libssl.so
libcrypto.so
libgpio14.so
liborganic_dump_proto.so
libprotobuf.so.3.10.0.0
organic_dump_server \
libtest_proto.so \
test_mysql_connector
)

EXTERNAL_PACKAGES=(
libmysqlcppconn8.so
libmysqlcppconn8.so.2
libmysqlcppconn8.so.2.8.0.18
)

PROJECT_ROOT=/home/bozkurtus/Documents/codez/personal-repos/organic-dump/organic-dump-project
DESTINATION_PATH=/home/bozkurtus/codez/plantsandthings/organic_dump_server
TARGET_MACHINE=35.247.98.106
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

#ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE" rm $DESTINATION_PATH/*
#ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE" mkdir -p $DESTINATION_PATH
upload_packages "${OUT_PACKAGES[@]}"
upload_packages "${EXTERNAL_PACKAGES[@]}"
