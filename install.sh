#/usr/bin/env bash

sudo whoami

sudo ./scripts/install-ansible.sh

# Installing dependencies for Ansible's APT module
# http://docs.ansible.com/ansible/apt_module.html#requirements
sudo apt-get install -y --force-yes python-apt aptitude

# XML support for Ansible
sudo ansible-galaxy install cmprescott.xml

ansible-playbook ./playbooks/install.yml --ask-become-pass -v

./scripts/install-nodejs.sh
./scripts/install-phpstorm.sh
./scripts/install-telegram.sh
