#!/bin/bash

echo "Installing nss-tool, jq, xsel, php, Curl, redis and mariadb"

sudo dnf install -y nss-tools jq xsel php-{cli,process,mbstring,mcrypt,xml,json,common,curl,opcache,readline,zip,pdo,gd,mysqlnd} redis redis-devel mariadb-server

sudo systemctl enable mariadb
sudo systemctl start mariadb

sudo mysql_secure_installation <<-EOF
n
n
Y
root
root
Y
n
Y
Y
EOF

echo "Installing Composer"

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

echo "Checking if composer is installed"

composer --version

echo "Installing Valet linux plus for Fedora Globally"

composer global require  aumiasif/valet-fedora-plus

echo "Adding path to .bashrc"

echo 'PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> $HOME/.bashrc

cd $HOME/.config/composer/vendor/bin

reboot
