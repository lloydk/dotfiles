apt install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $HOME
mv $HOME/.zshrc .olddotfiles
cd $HOME/.dotfiles
stow zsh
