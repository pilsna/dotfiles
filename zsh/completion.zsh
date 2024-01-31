# converted LSCOLORS using http://geoff.greer.fm/lscolors/
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

zstyle ':completion:*' menu select

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesnt perform completion
zstyle ':completion:*' insert-tab pending

# lets color it
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

