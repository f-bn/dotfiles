### General informations

This repository contains my dotfiles for my Linux environments managed using `chezmoi`.

Two environments are using these configurations:
  - `buran`: My main workstation (running Ubuntu 24.04 LTS on WSL2)
  - `foton`: My [laptop](https://www.lenovo.com/us/en/p/laptops/thinkpad/thinkpadp/thinkpad-p14s-gen-5-14-inch-intel-mobile-workstation/len101t0106) (running Ubuntu 25.04 with GNOME :heart:)

**Requirements**

* `chezmoi`
* `bitwarden-cli`

### How-to

* Install `chezmoi`: https://www.chezmoi.io/install/
* Login to Bitwarden with the CLI
  ```shell
  $ export BW_SESSION="$(bw login --raw)"
  ```
* Initialize the repository locally
  ```shell
  $ chezmoi init https://github.com/f-bn/dotfiles.git
  ```
* Apply the changes
  ```shell
  $ chezmoi apply
  ```

### Tools references

- Bitwarden: https://bitwarden.com/
- chezmoi: https://github.com/twpayne/chezmoi
- Incus: https://github.com/lxc/incus
- Neovim: https://github.com/neovim/neovim
- Oh My Zsh: https://github.com/ohmyzsh/ohmyzsh
- pipx: https://github.com/pypa/pipx
- Ptyxis: https://gitlab.gnome.org/chergert/ptyxis
- vim-plug: https://github.com/junegunn/vim-plug
- Zellij: https://github.com/zellij-org/zellij

### Wallpapers

- Wallpaper by [Jules Marvin Eguilos](https://unsplash.com/@jmeguilos)
- [D3Ext/aesthetic-wallpapers](https://github.com/D3Ext/aesthetic-wallpapers)