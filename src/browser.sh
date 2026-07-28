#!/bin/bash

# Symlinks the shared Codex Chrome launcher scripts into ~/bin.
# Done manually (not via the etc/ stow package) because ~/bin may already be
# a symlink into another directory (see setup-home), which stow can't fold into.
browser() {
  mkdir -p ~/bin
  ln -sf ~/.dotfiles/etc/bin/codex-chrome ~/bin/codex-chrome
  ln -sf ~/.dotfiles/etc/bin/ensure-codex-chrome ~/bin/ensure-codex-chrome
}

# Check if script is being run directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  browser "$@"
fi
