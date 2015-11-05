#!/bin/bash
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password root root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again root root'
sudo apt-get install mysql-server -y
