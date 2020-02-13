#!/usr/bin/env sh
set -x
mkdir -p $HOME/dev/BPS-Dev-Setup
sudo yum -y update
sudo yum -y install openssl-devel
sudo yum -y install rh-python35
sudo yum -y install devtoolset-8
sudo yum -y install devtoolset-6
sudo yum -y install devtoolset-2
sudo rm /opt/rh/devtoolset-8/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-8/root/usr/bin/sudo
sudo rm /opt/rh/devtoolset-6/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-6/root/usr/bin/sudo
sudo rm /opt/rh/devtoolset-2/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-2/root/usr/bin/sudo
source /opt/rh/rh-python35/enable
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade ansible
export PATH="$HOME/.local/bin:$PATH"
ansible-galaxy install smbambling.scl -p ./roles
ansible-playbook install.yml
#ansible-playbook install.yml -e 'ansible_python_interpreter=/opt/rh/rh-python35/root/usr/bin/python3'

