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
| **foton** | [ThinkPad P14s Gen 5](https://www.lenovo.com/us/en/p/laptops/thinkpad/thinkpadp/thinkpad-p14s-gen-5-14-inch-intel-mobile-workstation/len101t0106) | Ubuntu 26.04 + GNOME ❤️ |

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

### AI Tools

- 🤖 [**Copilot CLI**](https://github.com/github/copilot-cli) - GitHub Copilot CLI brings the power of Copilot coding agent directly to your terminal

### Containers & Kubernetes

- 📦 [**distrobox**](https://distrobox.it/) - Use any Linux distribution inside your terminal
- 🐳 [**dive**](https://github.com/wagoodman/dive) - A tool for exploring each layer in a docker image
- 🎯 [**k9s**](https://k9scli.io/) - Kubernetes CLI To Manage Your Clusters In Style!
- ⚙️ [**Krew**](https://krew.sigs.k8s.io/) - kubectl plugin manager
- ☸️ [**Minikube**](https://minikube.sigs.k8s.io) - Run Kubernetes locally

### Database & Messaging

- 📨 [**kafkactl**](https://github.com/deviceinsight/kafkactl) - Command Line Tool for managing Apache Kafka
- 🌐 [**MongoDB Atlas CLI**](https://www.mongodb.com/products/tools/atlas-cli) - MongoDB Atlas CLI
- 🍃 [**MongoDB Shell**](https://www.mongodb.com/products/tools/shell) - MongoDB CLI

### Development Tools

- 🔧 [**mise**](https://github.com/jdx/mise) - The front-end to your dev env
- ✏️ [**neovim**](https://github.com/neovim/neovim) - Vim-fork focused on extensibility and usability
- 🔌 [**vim-plug**](https://github.com/junegunn/vim-plug) - Minimalist Vim Plugin Manager
- 💻 [**Visual Studio Code**](https://code.visualstudio.com/) - Code editing. Redefined

### Terminal

- 🐚 [**oh-my-zsh**](https://github.com/ohmyzsh/ohmyzsh) - A delightful community-driven framework for managing your zsh configuration
- 💻 [**Ptyxis**](https://gitlab.gnome.org/chergert/ptyxis) - Terminal emulator
- 🪟 [**Zellij**](https://github.com/zellij-org/zellij) - A terminal workspace with batteries included

### Utilities

- 🔐 [**Bitwarden CLI**](https://bitwarden.com/) - The command line vault
- 🎛️ [**chezmoi**](https://github.com/twpayne/chezmoi) - Manage your dotfiles across multiple diverse machines, securely
- ⚔️ [**Exegol**](https://github.com/ThePorgs/Exegol) - Fully featured and community-driven hacking environment
- 🔍 [**fd**](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to find
- 📦 [**pipx**](https://github.com/pypa/pipx) - Install and Run Python Applications in Isolated Environments
- 🎵 [**streamrip**](https://github.com/nathom/streamrip) - A scriptable music downloader for Qobuz, Tidal, SoundCloud, and Deezer
- 📝 [**usage**](https://github.com/jdx/usage) - Used for completion in Mise
- 📂 [**zoxide**](https://github.com/ajeetdsouza/zoxide) - A smarter cd command for your terminal

### Wrappers

Custom wrappers born from pure laziness to avoid doing things manually 😁

- 🐳 [**syd**](dot_local/bin/executable_syd) - Launch systemd-compatible Docker containers with a single command
- 🔗 [**dshell**](dot_local/bin/executable_dshell) - Open an interactive shell in a Docker container easily (`docker exec` is too much typing 🙈)
- 🔀 [**dfwd**](dot_local/bin/executable_dfwd) - Forward ports dynamically from host to running Docker containers (much like `kubectl port-forward` but locally)

</details>

## 🎨 Credits

### Wallpapers

Wallpaper by [**Luca Bravo**](https://unsplash.com/@lucabravo)