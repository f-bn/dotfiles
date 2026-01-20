<div align="center">

![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![GNOME](https://img.shields.io/badge/GNOME-4A86CF?style=for-the-badge&logo=gnome&logoColor=white)

**Personal dotfiles for Linux environments managed with [chezmoi](https://www.chezmoi.io/)**

</div>

---

## 📋 Overview

This repository contains my dotfiles for my Linux environments, providing a consistent setup across multiple machines.

Configuration is managed using `chezmoi` for seamless synchronization.

### 💻 Environments

| Machine | Description | OS |
|---------|-------------|-----|
| **buran** | Main workstation | Ubuntu 24.04 (WSL2) |
| **foton** | [ThinkPad P14s Gen 5](https://www.lenovo.com/us/en/p/laptops/thinkpad/thinkpadp/thinkpad-p14s-gen-5-14-inch-intel-mobile-workstation/len101t0106) | Ubuntu 25.10 + GNOME ❤️ |

## 🚀 Quick Start

### Prerequisites

Before getting started, ensure you have the following tools installed:

- 🔐 **[Bitwarden CLI](https://bitwarden.com/help/cli/#download-and-install)** (`bw`)
- ⚙️ **[chezmoi](https://www.chezmoi.io/install/)**

### Installation

1. **Login to Bitwarden**
   ```shell
   export BW_SESSION="$(bw login --raw)"
   ```

2. **Retrieve GitHub token**
   ```shell
   export GITHUB_TOKEN="$(bw get password <item id>)"
   ```

3. **Initialize chezmoi source repository**
   ```shell
   chezmoi init https://github.com/f-bn/dotfiles.git
   ```

4. **Apply configuration**
   ```shell
   chezmoi apply
   ```

## 🛠️ Tools

<details>
<summary><b>Click to expand full toolset</b></summary>

### Development Tools

- 🚀 [**act**](https://github.com/nektos/act) - Run your GitHub Actions locally
- 🤖 [**Copilot CLI**](https://github.com/github/copilot-cli) - GitHub Copilot CLI brings the power of Copilot coding agent directly to your terminal
- ✏️ [**neovim**](https://github.com/neovim/neovim) - Vim-fork focused on extensibility and usability
- 🔌 [**vim-plug**](https://github.com/junegunn/vim-plug) - Minimalist Vim Plugin Manager
- 💻 [**Visual Studio Code**](https://code.visualstudio.com/) - Code editing. Redefined

### Containers & Kubernetes

- ⚙️ [**bootloose**](https://github.com/k0sproject/bootloose) - Manage containers that look like virtual machines
- 🐳 [**dive**](https://github.com/wagoodman/dive) - A tool for exploring each layer in a docker image
- 🎯 [**k9s**](https://k9scli.io/) - Kubernetes CLI To Manage Your Clusters In Style!
- ☸️ [**k0sctl**](https://github.com/k0sproject/k0sctl) - A bootstrapping and management tool for k0s clusters
- 📦 [**Krew**](https://krew.sigs.k8s.io/) - kubectl plugin manager
- ☸️ [**Minikube**](https://minikube.sigs.k8s.io) - Run Kubernetes locally
- 🔍 [**stern**](https://github.com/stern/stern) - Multi pod and container log tailing for Kubernetes

### Database & Messaging

- 📨 [**kafkactl**](https://github.com/deviceinsight/kafkactl) - Command Line Tool for managing Apache Kafka
- 🌐 [**MongoDB Atlas CLI**](https://www.mongodb.com/products/tools/atlas-cli) - MongoDB Atlas CLI
- 🍃 [**MongoDB Shell**](https://www.mongodb.com/products/tools/shell) - MongoDB CLI

### Utilities

- 🔐 [**Bitwarden CLI**](https://bitwarden.com/) - Password manager
- ⚙️ [**Butane**](https://github.com/coreos/butane) - Translates human-readable Butane Configs into machine-readable Ignition Configs
- 🎛️ [**chezmoi**](https://github.com/twpayne/chezmoi) - Manage your dotfiles across multiple diverse machines, securely
- 📦 [**pipx**](https://github.com/pypa/pipx) - Install and Run Python Applications in Isolated Environments

### Terminal

- 🐚 [**oh-my-zsh**](https://github.com/ohmyzsh/ohmyzsh) - A delightful community-driven framework for managing your zsh configuration
- 💻 [**Ptyxis**](https://gitlab.gnome.org/chergert/ptyxis) - Terminal emulator
- 🪟 [**Zellij**](https://github.com/zellij-org/zellij) - A terminal workspace with batteries included

### Custom Docker tooling

These are wrappers for some specific Docker tasks born from pure laziness to avoid doing some things manually :p

- 🐳 [**syd**](dot_local/bin/executable_syd) - Launch systemd-compatible Docker containers with a single command
- 🔗 [**dshell**](dot_local/bin/executable_dshell) - Open an interactive shell in a Docker container easily
- 🔀 [**dfwd**](dot_local/bin/executable_dfwd) - Forward ports dynamically from host to running Docker containers (much like `kubectl port-forward` but locally)

</details>

## 🎨 Credits

### Wallpapers

Wallpaper by [**Jack Anstey**](https://www.anstey.studio/)