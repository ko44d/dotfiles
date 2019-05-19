PS1="[%n@%m %~]\$ "

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

function history-all { history -E 1 }

export PATH=/usr/local/bin:$PATH

# GO
export GOPATH=$HOME/Documents/workspace/go
export GOBIN=$GOPATH/bin
if [ -x "`which go`" ]; then
    export PATH=$PATH:$GOBIN
fi

# Git
autoload -Uz compinit && compinit

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
