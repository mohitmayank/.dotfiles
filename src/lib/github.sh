#!/bin/bash

install_gh_cli() {
  sudo apt update
  sudo apt install -y git curl stow

  # Install GitHub CLI
  if ! command -v gh >/dev/null 2>&1; then
    echo "Installing GitHub CLI..."
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null
    sudo apt update
    sudo apt install -y gh
  fi
}

authenticate_with_github() {
  if ! gh auth status >/dev/null 2>&1; then
    echo "You need to authenticate with GitHub."
    gh auth login
  else
    echo "Already authenticated with GitHub."
  fi
}

check_github_ssh_key_registered() {
  if [ ! -f ~/.ssh/id_ed25519.pub ]; then
    echo "No SSH public key found at ~/.ssh/id_ed25519.pub"
    return 1
  fi

  local_key_type=$(awk '{print $1}' ~/.ssh/id_ed25519.pub)
  local_key_data=$(awk '{print $2}' ~/.ssh/id_ed25519.pub)

  registered_keys=$(gh api user/keys --jq '.[].key')

  while read -r registered_key; do
    registered_key_type=$(echo "$registered_key" | awk '{print $1}')
    registered_key_data=$(echo "$registered_key" | awk '{print $2}')

    if [ "$local_key_type" = "$registered_key_type" ] && [ "$local_key_data" = "$registered_key_data" ]; then
      echo "The SSH key is registered with GitHub."
      return 0
    fi
  done <<<"$registered_keys"

  echo "The SSH key is NOT registered with GitHub."
  return 1
}

add_ssh_key_to_github() {
  if check_github_ssh_key_registered; then
    echo "SSH key is already registered with GitHub."
  else
    read -p "Do you want to add the SSH key to GitHub? (y/N): " add_key
    if [[ "$add_key" =~ ^[Yy]$ ]]; then
      gh ssh-key add ~/.ssh/id_ed25519.pub -t "$ME@$H"
      if [ $? -eq 0 ]; then
        echo "SSH key added to GitHub successfully."
      else
        echo "Failed to add SSH key to GitHub."
        exit 1
      fi
    fi
  fi
}
