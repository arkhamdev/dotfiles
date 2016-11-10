# Path to oh-my-zsh installation.
export ZSH=/Users/chaouai/.oh-my-zsh
ZSH_THEME="arkham"

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set up PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add homebrew's path
export PATH="/usr/local/sbin:$PATH"

# Add m-cli's path
export PATH="$PATH:/usr/local/m-cli"

# add swift's path
# export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

# add GOPATH
export GOPATH="$HOME/Code/gocode"

# add yarn path
export PATH="$PATH:$HOME/.yarn/bin"

# Source aliases
source $HOME/.dotfiles/aliases

# Load Node nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load Ruby rbenv
eval "$(rbenv init -)"
