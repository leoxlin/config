# Alias Utility
function list_alias_starts_with() {
  local tab=$'\t'
  alias | \
    grep -E "^$1.*=" --color=never | \
    sed "s/=/$tab/" | \
    tr -d "'" | \
    grep -v 'list_alias_starts_with' | \
    sort -k1,1
}

# Shell aliases
alias quit='exit'
alias reload='source ~/.zshrc'
alias ls='ls --color=auto -X'
alias la='ls -A'
alias ll='ls -Al'
alias l='ls -F'
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias rmrf='rm -rf'

# Git
alias g='git'
alias gst='git status'

if command -v tofu 1>/dev/null 2>&1; then
  alias t='tofu'
  alias tf='tofu'
else
  alias t='terraform'
  alias tf='terraform'
fi

# Tmux
alias tm='tmux'
alias tmn='tmux new -s'
alias tmls='tmux ls'
alias tma='tmux attach -t'
alias tmk='tmux kill-session -t'
alias tmmv='tmux rename-session -t'
alias tmh='list_alias_starts_with tm'

# Docker
alias d='docker'
alias de='docker exec -it'
alias dm='docker-machine'
alias ds='docker service'
alias dsl='docker service logs'
alias dsps='docker service ps'
alias dsls='docker service ls'
alias dn='docker network'
alias dsw='docker swarm'
alias dh='list_alias_starts_with d'

# Change Cases
alias lower="tr '[:upper:]' '[:lower:]'"
alias upper="tr '[:lower:]' '[:upper:]'"

# Python
alias pi='pip install -r requirements.txt'
alias pe='pyenv'
alias per='pyenv rehash'
alias pev='pyenv version'
alias pvs='pyenv versions'
alias ph='list_alias_starts_with p'

# Kubectl
alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pod'
alias kgs='kubectl get service'
alias kgss='kubectl get statefulset'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kds='kubectl describe service'
alias kdss='kubectl describe statefulset'
alias ke='kubectl exec -ti'
alias kc='kubectl create -f'
alias kr='kubectl replace -f'
alias kt='kubectl logs -f'
alias ksn='kubectl config set-context $(kubectl config current-context) --namespace'
alias kh='list_alias_starts_with k'

# Linux Overrides
if ! [ `command -v pbcopy` ]; then
  alias pbcopy='xsel --clipboard --input'
fi
