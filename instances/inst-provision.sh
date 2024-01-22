#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/CHAINVIPERX/robo-shop.ansible.git
cd robo-shop.ansible/ANSIBLE-ROLES/
ansible-playbook -e component=mongodb setup.yaml
ansible-playbook -e component=redis setup.yaml
ansible-playbook -e component=mysql setup.yaml
ansible-playbook -e component=rabbitmq setup.yaml
ansible-playbook -e component=user setup.yaml
ansible-playbook -e component=catalogue setup.yaml
ansible-playbook -e component=cart setup.yaml
ansible-playbook -e component=shipping setup.yaml
ansible-playbook -e component=payment setup.yaml
ansible-playbook -e component=web setup.yaml