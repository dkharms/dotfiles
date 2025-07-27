# Common
export VISUAL="hx"
export EDITOR="hx"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="imajes"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,underline"

plugins=(
  git 
  gitignore
  git-open
  golang
  zsh-autosuggestions
  docker
  zsh-syntax-highlighting
  you-should-use
  kubectl
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export TERM="xterm-256color"

export PATH="/usr/local/go/bin:$PATH"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export PATH="$HOME/.atuin/bin:$PATH"

# System aliases
alias ls="eza --icons=never --group-directories-first"
alias sl=ls
alias tree="ls --tree"

# Cat aliases
alias cat=bat
alias k=kubectl

eval "$(zoxide init zsh)"

. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh --disable-up-arrow)"

source $HOME/functions/init
