#!/bin/bash

setup_tmux() {

  DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

  mkdir -p ~/.tmux/plugins

  if [ -d ~/.tmux/plugins/tpm ]; then
    #do nothing
    :
  else
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi

  ~/.tmux/plugins/tpm/scripts/install_plugins.sh
}
