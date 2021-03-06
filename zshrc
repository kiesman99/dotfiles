# insert exports
source ~/.exports.sh


# load zsh
source $ZSH/oh-my-zsh.sh

# load powerlevel10k
source ~/.p10k.zsh

# enable colorls tab completion
source $(dirname $(gem which colorls))/tab_complete.sh


## PLUGIN CONFIG

## SUGGESTIONS
plugins=(
	git
)
bindkey '^ ' autosuggest-accept


# ANTIBODY
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

anim() {
	if (gsettings get org.gnome.desktop.interface enable-animations) then
		echo 'Turning off animantions.';
		gsettings set org.gnome.desktop.interface enable-animations false 
	else
		echo 'Turning on animations.';
		gsettings set org.gnome.desktop.interface enable-animations true
	fi
}

# insert aliases
source ~/.aliases.sh

# vim keybinding for zsh
bindkey -v
export KEYTIMEOUT=1
bindkey '^r' history-incremental-search-backward

source /home/kiesman/.config/broot/launcher/bash/br
