#!/usr/bin/env bash

set -eo pipefail

OMZ_DIR="${HOME}/.oh-my-zsh"

# Install ohmyzsh
echo "* Install ohmyzsh"
git clone -q https://github.com/ohmyzsh/ohmyzsh.git "${OMZ_DIR}"

# Install ohmyzsh autosuggestions plugin
echo "* Install zsh autosuggestions plugin"
git clone -q https://github.com/zsh-users/zsh-autosuggestions "${OMZ_DIR}/custom/plugins/zsh-autosuggestions"
