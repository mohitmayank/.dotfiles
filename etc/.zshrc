# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/mohit/.dotfiles/conf/zsh/zshrc

[[ ! -f ~/.zshenv ]] || source ~/.zshenv
[[ ! -f ~/.aliases ]] || source ~/.aliases
[[ ! -f ~/.functions ]] || source ~/.functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export ANDROID_HOME="$HOME/Android/Sdk"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/cmdline-tools/latest:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"

# place this after nvm initialization!
autoload -U add-zsh-hook
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# bun completions
[ -s "/home/mohit/.bun/_bun" ] && source "/home/mohit/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# opencode
export PATH=/home/mohit/.opencode/bin:$PATH

# pnpm
export PNPM_HOME="/home/mohit/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
