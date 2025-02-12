#!/bin/bash

nvm() {
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  nvm install node
  npm install -g npm-check-updates
  npm install -g github-deploy
}
