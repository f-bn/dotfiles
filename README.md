### General informations

This repository contains my dotfiles for my Linux environments (mostly using Ubuntu on WSL2).

### How-to

* Install `chezmoi`: https://www.chezmoi.io/install/
* Initialize the repository locally
  ```shell
  $ chezmoi init git@github.com:f-bn/dotfiles.git
  ```
* Apply the changes
  ```shell
  $ chezmoi apply
  ```

### WSL2 + Cloud-Init

Starting cloud-init 24.1, WSL2 distributions can be provisionned using *cloud-init*. Therefore you can import a custom WSL2 image and apply your customizations in an automated way.

The file located in [cloud-init folder](./cloud-init/) must be placed here: `%USERPROFILE%\.cloud-init\default.user-data`. Then, you can import your WSL image, here we will import an Ubuntu 24.04 WSL image that you can find [here](https://cloud-images.ubuntu.com/wsl/): 

```shell
PS C:\WSL> wsl --import Linux <install folder> ubuntu.tar.gz
```

Launch the WSL2 by waiting for `cloud-init` to provision your instance:

```shell
PS C:\WSL> wsl -d Linux -- cloud-init status --wait
...................................................................................................
status: done
```

As cloud-init will shutdown the WSL distribution at the end of provisionning, shutdown the WSL and start it again to avoid any issues:

```shell
PS C:\WSL> wsl --shutdown
PS C:\WSL> wsl -d Linux
```

And voilà !