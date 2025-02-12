#!/bin/bash

add_to_sudo() {
  ME=$(whoami)
  sudo sh -c "echo '$ME ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/$ME"
}
