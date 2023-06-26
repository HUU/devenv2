setopt share_history
HISTSIZE=500000
SAVEHIST=500000

bindkey -e

bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
