echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee --append /etc/apt/sources.list.d/pgdg.list > /dev/null
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt install -y postgresql-9.6 postgresql-client-9.6 postgresql-contrib-9.6 libpq-dev

stow postgresql
