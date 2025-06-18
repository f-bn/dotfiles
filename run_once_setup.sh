#!/usr/bin/env bash

set -eo pipefail

INSTALL_DIR="$HOME/.local/bin"
TEMP_DIR="$(mktemp -d)"

mkdir -p "${INSTALL_DIR}"

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

# Install Python packages
echo "* Install Python packages (using pipx)"
pipx install -q --force exegol streamrip

# Install vim plugin manager (vim-plug)
echo "* Install vim plugin manager"
curl -sfLo "${HOME/.local/share}/nvim/site/autoload/plug.vim" \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install ohmyzsh
echo "* Install ohmyzsh"
git clone -q https://github.com/ohmyzsh/ohmyzsh.git "${HOME}/.oh-my-zsh"

# Install ohmyzsh autosuggestions plugin
echo "* Install ohmyzsh autosuggestions plugin"
git clone -q https://github.com/zsh-users/zsh-autosuggestions "${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

# Change user default shell
sudo chsh -s /usr/bin/zsh fbobin

# Cleanup
rm -rf "${TEMP_DIR}"
