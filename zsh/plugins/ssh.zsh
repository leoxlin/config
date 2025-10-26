if [[ "$(pgrep ssh-agent)" == "" ]]; then
  eval "$(ssh-agent)"
  ssh-add -K ~/.ssh/id_ed25519 > /dev/null 2> /dev/null
else
  export SSH_AGENT_PID="$(pgrep ssh-agent | head -n 1)"
  export SSH_AUTH_SOCK="$(lsof -w -p $SSH_AGENT_PID | grep unix | head -n 1 | awk '{ print $8 }')"
fi

function reload_ssh_agent() {
  pkill ssh-agent
  eval "$(ssh-agent)"
  ssh-add -K ~/.ssh/id_ed25519
}
