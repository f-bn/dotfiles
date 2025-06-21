#!/usr/bin/env bash

set -eo pipefail

# Install vim plugin manager (vim-plug)
echo "* Install vim plugin manager (vim-plug)"
if [ ! -f "${HOME}/.local/share/nvim/site/autoload/plug.vim" ]; then
  mkdir -p "${HOME}/.local/share/nvim/site/autoload"
  curl -sfLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "> Already installed, skipping"
fi