#!/bin/zsh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILES_DIR/$1"
  local dest="$HOME/$1"

  mkdir -p "$(dirname "$dest")"

  if [ -L "$dest" ]; then
    echo "already linked: $dest"
  elif [ -e "$dest" ]; then
    echo "backing up: $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
    ln -s "$src" "$dest"
    echo "linked: $dest"
  else
    ln -s "$src" "$dest"
    echo "linked: $dest"
  fi
}

link ".vimrc"
link ".zshrc"
link ".claude/CLAUDE.md"
link ".claude/rules/user-spec.md"
