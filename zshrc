# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/Users/justinvietz/sdks/flutter/bin:$Home/bin:/usr/local/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

## PLUGIN CONFIG

## SUGGESTIONS

bindkey '^ ' autosuggest-accept

# ANTIGEN
source ~/dotfiles/antigen.zsh

# load antigenrc
antigen init ~/.antigenrc