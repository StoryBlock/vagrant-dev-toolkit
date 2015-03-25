apt-get install build-essential -y
apt-get install tcl8.5 -y
wget http://download.redis.io/releases/redis-2.8.19.tar.gz
tar xzf redis-2.8.19.tar.gz
cd redis-2.8.19
make
make install
