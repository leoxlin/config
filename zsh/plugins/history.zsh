# Executables and symbolic links as red
LS_COLORS=$LS_COLORS:'ex=0;31:'
LS_COLORS=$LS_COLORS:'ln=0;31:'
export LS_COLORS

# Allow large history size and saved history
SAVEHIST=50000000000000
HISTSIZE=10000000000000
HISTFILE=~/.zsh_history
setopt hist_ignore_dups

# Modification bindings
bindkey -e
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^Xa' beginning-of-line
