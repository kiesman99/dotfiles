
# activate compinit
autoload -Uz compinit
compinit

# Functions

source ~/.dotfiles/functions.zsh

# PLUGINS

# additional config
source ~/.dotfiles/plugins/pnpm.zsh

# Plugin manager
source ~/.dotfiles/plugins/antidote.zsh

source ~/.dotfiles/plugins/mise.zsh

source ~/.dotfiles/plugins/starship.zsh

source ~/.dotfiles/plugins/zoxide.zsh

source ~/.dotfiles/plugins/atuin.zsh

# Aliases
source ~/.dotfiles/alias/ls.zsh
source ~/.dotfiles/alias/cd.zsh

# Scripts
source ~/.dotfiles/scripts/git.zsh

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt
