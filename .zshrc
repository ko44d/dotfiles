# PATH 設定（優先度の高いものを前に）
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/.orbstack/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# プロンプト設定
PS1="[%n@%m %~]\$ "

# 履歴設定
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

# 全履歴を表示する関数
function history-all { history -E 1 }

# goenv 設定
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# Go のバイナリがあるディレクトリを PATH に追加
export PATH=$(go env GOPATH)/bin:$PATH

# Git プロンプト情報
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# コマンド補完の最適化（キャッシュを有効化）
autoload -Uz compinit
if [[ -f ~/.zcompdump ]]; then
    compinit -C
else
    compinit
fi

# direnv 設定
export EDITOR=vim
eval "$(direnv hook zsh)"

# volta 設定
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# PostgreSQL 設定
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# zsh-autosuggestions（補完機能）
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zplug 設定
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# enhancd（ディレクトリ移動支援ツール）
zplug "b4b4r07/enhancd", use:init.sh
export ENHANCD_FILTER="/usr/local/bin/peco"

# zplug をロード
zplug load --verbose
