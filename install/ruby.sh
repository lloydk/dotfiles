cd ~/Downloads
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install
cd ..
rm -rf ruby-install-0.6.1

ruby-install --system ruby 2.4.1
