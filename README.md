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

| Machine   | Description          | OS                   |
|-----------|----------------------|----------------------|
| **buran** | Custom desktop build | Fedora 44 (GNOME)    |


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
   export GITHUB_TOKEN="$(bw get password 278887eb-97b2-4fb3-8d32-b38c013096d2)"
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

- 📝 [**OpenCode**](https://github.com/anomalyco/opencode) - The open source coding agent

### Containers & Kubernetes

- 🐳 [**dive**](https://github.com/wagoodman/dive) - A tool for exploring each layer in a docker image
- 🎯 [**k9s**](https://k9scli.io/) - Kubernetes CLI To Manage Your Clusters In Style!
- ☸️ [**kind**](https://kind.sigs.k8s.io/) - Kubernetes IN Docker - local clusters for testing Kubernetes
- ⚙️ [**krew**](https://krew.sigs.k8s.io/) - kubectl plugin manager
- 🦭 [**Podman Desktop**](https://podman-desktop.io/) - A graphical tool for developing on containers and Kubernetes

### Database & Messaging

- 📨 [**kafkactl**](https://github.com/deviceinsight/kafkactl) - Command Line Tool for managing Apache Kafka
- 🍃 [**mongosh**](https://www.mongodb.com/products/tools/shell) - MongoDB Shell

### Development Tools

- 🔧 [**mise**](https://github.com/jdx/mise) - The front-end to your dev env
- ⌨️ [**vim**](https://www.vim.org/) - Highly configurable text editor built to make creating and changing any kind of text very efficient
- 🔌 [**vim-plug**](https://github.com/junegunn/vim-plug) - Minimalist Vim Plugin Manager
- 💻 [**Visual Studio Code**](https://code.visualstudio.com/) - Code editing. Redefined

### Terminal

- 🐚 [**oh-my-zsh**](https://github.com/ohmyzsh/ohmyzsh) - A delightful community-driven framework for managing your zsh configuration
- 📟 [**Ptyxis**](https://gitlab.gnome.org/chergert/ptyxis) - A terminal for a container-oriented desktop
- 🪟 [**Zellij**](https://github.com/zellij-org/zellij) - A terminal workspace with batteries included

### Utilities

- 🔐 [**Bitwarden CLI**](https://bitwarden.com/) - The command line vault
- 🎛️ [**chezmoi**](https://github.com/twpayne/chezmoi) - Manage your dotfiles across multiple diverse machines, securely
- 🔍 [**fd**](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to find
- 🔎 [**ripgrep**](https://github.com/burntsushi/ripgrep) - ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- 📝 [**usage**](https://github.com/jdx/usage) - Used for completion in Mise
- 📂 [**zoxide**](https://github.com/ajeetdsouza/zoxide) - A smarter cd command for your terminal

### Wrappers

Custom wrappers born from pure laziness to avoid doing things manually 😁

- 🦭 [**psh**](dot_local/bin/executable_psh) - Open an interactive shell in a Podman container easily (`podman exec` is too much typing 🙈)

</details>
