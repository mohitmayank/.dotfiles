#!/bin/bash

clone_dotfiles_repo() {
  cd ~
  if [ -d ~/.dotfiles ]; then
    echo "Dotfiles repository already exists."
  else
    git clone git@github.com:mohitmayank/.dotfiles.git ~/.dotfiles || {
      echo "Failed to clone repository via SSH. Trying HTTPS..."
      git clone https://github.com/mohitmayank/.dotfiles.git ~/.dotfiles
    }
  fi
  cd ~/.dotfiles
}
