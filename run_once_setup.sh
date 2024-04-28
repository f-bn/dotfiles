#!/usr/bin/env bash

set -eo pipefail

INSTALL_DIR="$HOME/.local/bin"
TEMP_DIR="/tmp/chezmoi.temp"

mkdir -p "${INSTALL_DIR}"
mkdir -p "${TEMP_DIR}"

# Install Zellij
echo "* Install Zellij"
wget -q -O "${TEMP_DIR}/zellij.tar.gz" https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
tar -xf "${TEMP_DIR}/zellij.tar.gz" -C "${INSTALL_DIR}"
chmod +x "${INSTALL_DIR}/zellij"

# Install Task
echo "* Install Task"
wget -q -O "${TEMP_DIR}/task.tar.gz" https://github.com/go-task/task/releases/latest/download/task_linux_amd64.tar.gz
tar -xf "${TEMP_DIR}/task.tar.gz" -C "${INSTALL_DIR}" task
chmod +x "${INSTALL_DIR}/task"

# Install Minikube
echo "* Install Minikube"
wget -q -O "${INSTALL_DIR}/minikube" https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x "${INSTALL_DIR}/minikube"

# Install Incus client
echo "* Install Incus client"
wget -q -O "${INSTALL_DIR}/incus" https://github.com/lxc/incus/releases/latest/download/bin.linux.incus.x86_64
chmod +x "${INSTALL_DIR}/incus"

# Install ASDF
echo "* Install ASDF"
git clone -q https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.14.0

# Install Python packages
echo "* Install Python packages (using pipx)"
pipx install -q git+https://github.com/aiven/aiven-client.git
pipx install -q git+https://github.com/nathom/streamrip.git@v2.0.3

# Install ohmyzsh
echo "* Install ohmyzsh"
git clone -q https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh

# Install ohmyzsh autosuggestions
echo "* Install ohmyzsh autosuggestions plugin"
git clone -q https://github.com/zsh-users/zsh-autosuggestions "${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

# Install vim plugin manager (vim-plug)
echo "* Install vim plugin manager"
curl -sfLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Change user default shell
sudo chsh -s /usr/bin/zsh f-bn

# Cleanup
rm -rf "${TEMP_DIR}"
