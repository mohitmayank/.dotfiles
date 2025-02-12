#!/bin/bash

generate_ssh_keys() {
  if [ -f ~/.ssh/id_ed25519 ]; then
    echo "SSH keys already exist."
  else
    mkdir -p ~/.ssh
    ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N '' -C "$ME@$H"
  fi
}

