#!/usr/bin/env bash

set -eo pipefail

OMZ_DIR="${HOME}/.oh-my-zsh"
OMZ_PLUGIN_DIR="${OMZ_DIR}/custom/plugins"

# Install ohmyzsh
echo "* Install ohmyzsh"
if [ ! -d "${OMZ_DIR}" ]; then
  mkdir -p "${OMZ_DIR}"
  git clone -q https://github.com/ohmyzsh/ohmyzsh.git "${OMZ_DIR}"
else
  echo "> Oh My Zsh already installed, skipping"
fi


# Install ohmyzsh autosuggestions plugin
echo "* Install zsh autosuggestions plugin"
if [ ! -d "${OMZ_PLUGIN_DIR}/zsh-autosuggestions" ]; then
  mkdir -p "${OMZ_PLUGIN_DIR}/custom/plugins"
  git clone -q https://github.com/zsh-users/zsh-autosuggestions "${OMZ_PLUGIN_DIR}/zsh-autosuggestions"
else
  echo "> Already installed, skipping"
fi