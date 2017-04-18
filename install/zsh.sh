apt install -y zsh
chsh -s `which zsh`
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mv $HOME/.zshrc .olddotfiles
cd $HOME/.dotfiles
stow zsh
echo "You will need to logout in order to start a terminal with zsh as the default shell"
