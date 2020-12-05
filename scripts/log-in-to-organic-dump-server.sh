#!/bin/bash

TARGET_MACHINE=35.247.98.106
SSH_KEY_PATH=~/.ssh/trevor-assaf-gcp-ssh-key
SSH_USERNAME=bozkurtus

ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE"
