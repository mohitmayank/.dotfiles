#!/bin/bash

install_apt_commons() {
  sudo apt update
  sudo apt -y upgrade

  sudo apt install -y \
    vim \
    git \
    curl \
    neovim \
    gdebi \
    tmux \
    zsh \
    fonts-powerline \
    wget \
    p7zip \
    unrar-free \
    tree \
    htop \
    editorconfig \
    unzip \
    git-extras \
    software-properties-common \
    build-essential \
    apt-transport-https \
    openssh-server \
    libssl-dev \
    httpie \
    pipx
}

install_apt_ui() {
  sudo add-apt-repository universe
  sudo add-apt-repository multiverse
  sudo apt update

  sudo apt-get remove -y --purge \
    gnome-sudoku \
    gnome-calendar \
    gnome-todo \
    gnome-mines \
    gnome-mahjongg \
    aisleriot \
    shotwell \
    totem \
    gedit \
    rhythmbox

  sudo apt-get install -y \
    ubuntu-restricted-extras \
    thunderbird \
    gparted \
    calibre \
    torbrowser-launcher \
    ttf-mscorefonts-installer \
    meld \
    zeal \
    gnome-tweaks \
    dconf-editor \
    vlc \
    gimp \
    gnome-shell-extension-manager
}
