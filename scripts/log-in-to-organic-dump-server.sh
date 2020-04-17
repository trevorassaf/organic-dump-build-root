#!/bin/bash

TARGET_MACHINE=35.208.146.146
SSH_KEY_PATH=~/.ssh/trevor-assaf-gcp-ssh-key
SSH_USERNAME=bozkurtus

ssh -i $SSH_KEY_PATH "$SSH_USERNAME@$TARGET_MACHINE"
