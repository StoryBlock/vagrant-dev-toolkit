sudo apt-get install gcc make build-essential -y
sudo apt-get install -y curl
sudo apt-get install -y git
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile
nvm install v0.12
nvm install v4
nvm install stable
nvm alias default stable

n=$(which node);n=${n%/bin/node}; sudo chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
