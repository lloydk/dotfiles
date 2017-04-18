sudo apt-get update

sudo apt-get -y upgrade

# Needed for proper screen resolution and host OS integration
sudo apt-get -y install virtualbox-guest-dkms

# git and stow are used to clone the dotfiles repository and symlink configuration files
sudo apt-get -y install git stow

# Move existing config files that will be symlinked using stow to this folder
mkdir $HOME/.olddotfiles

git clone https://github.com/lloydk/dotfiles.git $HOME/.dotfiles

# Allow changes to the repo to be pushed to github after ssh keys have been installed
git remote set-url origin git@github.com:lloydk/dotfiles.git
