#!/bin/bash

setup_zsh() {

  DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

  if [ -d ~/.oh-my-zsh ]; then
    #do nothing
    :
  else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  fi
  if [ -d ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search ]; then
    #do nothing
    :
  else
    git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
  fi

  if [ -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
    #do nothing
    :
  else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
  fi

  touch ~/.zshenv
  mkdir -p ~/.zsh/completion

  change_shell_to_zsh
}

change_shell_to_zsh() {
  zsh_path="$(command -v zsh)"
  current_shell="$(getent passwd "$(whoami)" | cut -d: -f7)"

  if [ "$current_shell" = "$zsh_path" ]; then
    echo "Default shell is already zsh."
  else
    sudo chsh -s "$zsh_path" "$(whoami)"
  fi
}
