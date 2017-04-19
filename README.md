# dotfiles
Configuration and setup files for setting up an Ubuntu development machine

## Bootstrap a New Machine
* Updates and upgrades Ubuntu
* Installs VirtualBox Guest Additions
* Installs git and stow
* Clones this repository
* Installs git dotfiles. Not necessary to bootstrap a machine but we'll keep the installation of git and git config files together in the same script
### Prerequisites
* Ubuntu installed in a VirtualBox VM.

### Instructions
```
sh -c "$(wget https://raw.githubusercontent.com/lloydk/dotfiles/master/bootstrap.sh -O -)"
```

## Copy ssh keys
* Copys ssh keys from a USB drive
### Prerequisites
* The script assumes that the USB drive is mounted at /media/lloydk/ESD-USB
### Instructions
```
cd $HOME/.dotfiles
install/ssh_keys.sh
```

## Install zsh and oh-my-zsh
* Installs zsh
* Sets zsh as the default shell
* Installs oh-my-zsh
* Installs zsh and oh-my-zsh dotfiles
### Instructions
```
cd $HOME/.dotfiles
install/zsh.sh
```
### Post Install
Logout so that new terminals are created with zsh as the shell.

## Install Fonts
* Installs Adobe Source Code Pro and Roboto fonts
### Instructions
```
cd $HOME/.dotfiles
install/fonts.sh
```

## Install Termite
* Installs the termite terminal
* Installs termite dotfiles
### Instructions
```
cd $HOME/.dotfiles
install/termite.sh
```

## Install i3 Window Manager
* Installs the i3 window manager, rofi and i3blocks
* Installs i3 dotfiles
### Instructions
```
cd $HOME/.dotfiles
sudo install/i3.sh
```
