#!/usr/bin/env sh
# Installs the aliases by including them from your global git config.
set -e
dest="$HOME/.gitconfig-aliases"
src="https://raw.githubusercontent.com/ERROR404DTIR/git-aliases-lite/main/aliases.gitconfig"
curl -fsSL "$src" -o "$dest"
git config --global --get-all include.path | grep -qxF "$dest" || git config --global --add include.path "$dest"
echo "Installed. Try: git lg, git st, git aliases"
