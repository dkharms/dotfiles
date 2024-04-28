# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export HOMEBREW_BUNDLE_FILE_GLOBAL="$HOME/.config/brew/Brewfile"

# Common
export VISUAL="hx"
export EDITOR="hx"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fishy"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,underline"

plugins=(
  git gitignore git-open
  golang zsh-autosuggestions docker
  zsh-syntax-highlighting you-should-use
  kubectl
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export BAT_THEME="ansi"
export TERM="xterm-256color"
export HOMEBREW_NO_AUTO_UPDATE=1

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.nimble/bin:$PATH"

# System aliases
alias ls="eza --icons --group-directories-first"
alias sl=ls
alias tree="ls --tree"

## Python aliases
alias python=python3
alias pip=pip3

# Cat aliases
alias cat=bat

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(atuin init zsh --disable-up-arrow)"

eval "$(zoxide init zsh)"

source $HOME/functions/init

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
