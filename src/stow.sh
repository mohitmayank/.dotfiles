#!/bin/bash

run_stow() {
  cd ~/.dotfiles/etc
  stow -v -t ~ .
}

# Check if script is being run directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  run_stow "$@"
fi
