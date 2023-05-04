#!/usr/bin/env bash

function install {
  echo installing $1
  shift
  apt-get -y install "$@" >/dev/null 2>&1
}

echo adding swap file
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap sw 0 0' >> /etc/fstab

echo updating package information
apt-get -y update >/dev/null 2>&1

install 'development tools' build-essential autoconf libtool
install Ruby ruby-full

echo updating current RubyGems
gem update --system -N >/dev/null 2>&1

install Git git

install PostgreSQL postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser vagrant

install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev
install 'Blade dependencies' libncurses5-dev
install Node.js nodejs

update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo 'Done! Mantap!'
