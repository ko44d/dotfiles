PS1="[%n@%m %~]\$ "

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

function history-all { history -E 1 }
