#!/bin/sh

git clone git://github.com/yyuu/pyenv.git ~/.pyenv
cd ~/.pyenv/plugins
git clone git://github.com/yyuu/pyenv-virtualenv.git
pyenv install 3.6.3
pyenv global 3.6.3
source ~/.bashrc

pip install --upgrade pip
if [ -f /vagrant/scripts/requirements.txt ]; then
  pip install -r /vagrant/scripts/requirements.txt
fi
