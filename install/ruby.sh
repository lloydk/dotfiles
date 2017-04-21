cd ~/Downloads
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install
cd ..
rm -rf ruby-install-0.6.1
rm ruby-install-0.6.1.tar.gz

sudo ruby-install --system ruby 2.4.1

wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cd ..
rm -rf chruby-0.3.9
rm chruby-0.3.9.tar.gz
