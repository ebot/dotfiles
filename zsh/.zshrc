# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="ed"

plugins=(
  git
  # asdf
)
source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

# Add Go to the path
export GOPATH=~/go/packages

# Set up oracle
export ORACLE_HOME="$HOME/bin/instantclient_12_2" # Set Oracle Home
export PATH="$PATH:$ORACLE_HOME"              # Add oracle to path
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$ORACLE_HOME" # Add to lib path
export OCI_DIR="$OCI_DIR:$ORACLE_HOME" # Add to lib path

# Instead of using ctrl-a and ctrl-e to navigate the begin and end of line
# lets bind them to the home and end keys
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# Shortcut to boost memory
alias tang="dd if=/dev/zero of=/tmp/swap bs=1M count=1024; mkswap /tmp/swap; sudo swapon /tmp/swap"

# Clear Out Vim Cache
alias flush_vim="rm ~/.vim/_temp/*.swp"

# Alias python
alias py=python3
alias python=python3

# Set the time zone
TZ='America/New_York'; export TZ

# Set up ssh agent to store keys with passwords
start_ssh_agent() {
  local env=~/.ssh/agent.env

  agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

  agent_start () {
      (umask 077; ssh-agent >| "$env")
      . "$env" >| /dev/null ; }

  agent_load_env

  # agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
  agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

  if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
      agent_start
      ssh-add
  elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
      ssh-add
  fi
}

# Load asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load homebrew
export PATH=/opt/homebrew/bin:$PATH

# Start the starship prompt
eval "$(starship init zsh)"

# start mise
eval "$(mise activate zsh)"

# Set Zellij Tab
zellij_tab_name_update() {
    if [[ -n $ZELLIJ ]]; then
        local current_dir=$PWD
        if [[ $current_dir == $HOME ]]; then
            current_dir="~"
        else
            current_dir=${current_dir##*/}
        fi
        command nohup zellij action rename-tab $current_dir >/dev/null 2>&1
    fi
}

zellij_tab_name_update
chpwd_functions+=(zellij_tab_name_update)
