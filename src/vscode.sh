#!/bin/bash

vscode() {
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg >/dev/null
  sudo chmod go+r /usr/share/keyrings/microsoft.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
  sudo apt update
  sudo apt install -y code-insiders
}
