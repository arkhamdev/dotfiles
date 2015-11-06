export ZSH=$HOME/.oh-my-zsh

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR="vim"
export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/aliases

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Ruby
eval "$(rbenv init -)"
