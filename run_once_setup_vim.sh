#!/usr/bin/env bash

set -eo pipefail

# Install vim plugin manager (vim-plug)
echo "* Install vim plugin manager (vim-plug)"
curl -sfLo "${HOME/.local/share}/nvim/site/autoload/plug.vim" \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim