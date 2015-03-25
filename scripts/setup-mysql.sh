debconf-set-selections <<< 'mysql-server mysql-server/root_password root root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again root root'
apt-get install mysql-server -y
