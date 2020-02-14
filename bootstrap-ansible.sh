#!/usr/bin/env sh
set -x
mkdir -p $HOME/dev/BPS-Dev-Setup

sudo yum -y update
sudo yum -y remove git
#sudo yum -y remove sclo-git212
sudo yum -y remove devtoolset-8
sudo yum -y remove devtoolset-6
#sudo yum -y remove devtoolset-2
sudo yum -y reinstall openssl || sudo yum -y install openssl
sudo yum -y reinstall openssl-devel || sudo yum -y install openssl-devel
#sudo yum -y reinstall sclo-git212   || sudo yum -y install sclo-git212
sudo yum -y reinstall devtoolset-8  || sudo yum -y install devtoolset-8
sudo yum -y reinstall devtoolset-6  || sudo yum -y install devtoolset-6
sudo yum -y reinstall git  || sudo yum -y install git
#sudo yum -y reinstall devtoolset-2  || sudo yum -y install devtoolset-2
#sudo yum -y --setopt=skip_missing_names_on_install=False install openssl-devel || sudo yum -y reinstall openssl-devel
sudo rm /opt/rh/devtoolset-8/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-8/root/usr/bin/sudo
sudo rm /opt/rh/devtoolset-6/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-6/root/usr/bin/sudo
#sudo rm /opt/rh/devtoolset-2/root/usr/bin/sudo
#sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-2/root/usr/bin/sudo

sudo yum -y install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
#source /opt/rh/sclo-git212/enable
wget https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer
sh pyenv-installer
#curl https://pyenv.run | bash
export PATH="$HOME/.pyenv/bin:$HOME/.local/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
CFLAGS=-I/usr/include/openssl \
LDFLAGS=-L/usr/lib64 \
pyenv install 3.6.8
pyenv virtualenv 3.6.8 dev-setup
pyenv activate dev-setup
pip install --upgrade pip
pip install --upgrade ansible
#sudo python3 -m pip install --upgrade pip
#sudo python3 -m pip install --upgrade ansible
ansible-galaxy install smbambling.scl -p ./roles
ansible-playbook install.yml
#ansible-playbook install.yml -e 'ansible_python_interpreter=/opt/rh/rh-python35/root/usr/bin/python3'

