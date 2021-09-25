#!/bin/bash

echo "Remove path to .bashrc"

sed 'PATH="$PATH:$HOME/.config/composer/vendor/bin"' $HOME/.bashrc

echo "Remove Valet linux plus for Fedora Globally"

composer global remove  aumiasif/valet-linux-plus-fedora

echo "Removing Composer"

sudo rm /usr/local/bin/composer

echo "Removing nss-tool, jq, xsel, php, Curl, redis and mariadb"

sudo dnf remove -y nss-tools jq xsel php-{cli,process,mbstring,mcrypt,xml,json,common,curl,opcache,readline,zip,pdo,gd,mysqlnd} curl redis redis-devel mariadb-server
