#!/bin/sh

yum update
yum upgrade

# install epel-7
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y epel-release-latest-7.noarch.rpm

cp /vagrant/scripts/bashrc_resource /home/vagrant/.bashrc

# install pyenv
yum install -y gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel \
    readline-devel sqlite-devel bzip2 sqlite zlib-devel bzip2 bzip2-devel \
    readline-devel sqlite sqlite-devel openssl-devel libffi-devel

# install vim
(
    cd /tmp/ &&
    git clone https://github.com/vim/vim.git &&
    cd vim/
    make
    make install
)
