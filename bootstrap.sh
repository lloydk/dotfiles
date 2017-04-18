sudo apt-get update

sudo apt-get -y upgrade

# Needed for proper screen resolution and host OS integration
sudo apt-get -y install virtualbox-guest-dkms

# git and stow are used to clone the dotfiles repository and symlink configuration files
sudo apt-get -y install git stow

# Move existing dotfiles here before calling stow
mkdir $HOME/.olddotfiles

git clone https://github.com/lloydk/dotfiles.git $HOME/.dotfiles

