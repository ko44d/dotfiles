export PATH=/usr/local/bin:$PATH

PS1="[%n@%m %~]\$ "

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

function history-all { history -E 1 }

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# Git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# コマンド補完
autoload -Uz compinit && compinit

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Postgres
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# enhancd
zplug "b4b4r07/enhancd", use:init.sh
export ENHANCD_FILTER="/usr/local/bin/peco"

zplug load --verbose

