#!/bin/bash

TARGET_MACHINE=35.208.146.146
SSH_KEY_PATH=~/.ssh/trevor-assaf-gcp-ssh-key
SSH_USERNAME=bozkurtus

if [ -d $1 ] || [ -f $1 ]; then
  scp -i $SSH_KEY_PATH -r "$1" "$SSH_USERNAME@$TARGET_MACHINE":"$2"
else
  echo "$1 is not a valid file or directory"
fi
