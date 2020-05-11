export PATH=/usr/local/bin:$PATH

PS1="[%n@%m %~]\$ "

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

function history-all { history -E 1 }

# GO
export PATH=$PATH:/usr/local/go/bin

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

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zplug
export ZPLUG_HOME=$HOME/.zplug
source ~/.zplug/init.zsh

# enhancd
zplug "b4b4r07/enhancd", use:init.sh
export ENHANCD_FILTER="/usr/local/bin/peco"

zplug load --verbose
