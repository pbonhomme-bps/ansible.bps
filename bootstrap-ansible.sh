#!/usr/bin/env sh
set -x
set -e
sudo yum -y update
sudo yum -y install openssl-devel
sudo yum -y install rh-python35
sudo yum -y install devtoolset-8
sudo rm /opt/rh/devtoolset-8/root/usr/bin/sudo
sudo ln -s /usr/bin/sudo /opt/rh/devtoolset-8/root/usr/bin/sudo
source /opt/rh/rh-python35/enable
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade ansible
export PATH="$HOME/.local/bin:$PATH"
ansible-galaxy install smbambling.scl -p ./collections
#ansible-playbook main.yml -e 'ansible_python_interpreter=/opt/rh/rh-python35/root/usr/bin/python3'

