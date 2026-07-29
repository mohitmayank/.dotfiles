#!/bin/bash

install_fonts() {
  mkdir -p ~/.local/share/fonts
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraMono.zip -O /tmp/nerdfonts.zip
  unzip -o /tmp/nerdfonts.zip -d ~/.local/share/fonts/
  fc-cache -f
}

vscode_fix() {
  sudo sh -c 'echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf'
  sudo sysctl -p
}
