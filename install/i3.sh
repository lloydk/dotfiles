cd ~/Downloads
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | sudo cut -f2 -d=) universe" | sudo tee --append /etc/apt/sources.list.d/sur5r-i3.list > /dev/null
sudo apt update
sudo apt install -y i3 i3blocks rofi
rm keyring.deb

cd $HOME/.dotfiles
stow i3
