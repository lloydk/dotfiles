sudo apt install -y python-setuptools python-dev
mkdir -p ~/work
cd ~/work
git clone git://github.com/ansible/ansible.git --recursive 
sudo easy_install pip
cd ~/work/ansible
sudo pip install -r ./requirements.txt

