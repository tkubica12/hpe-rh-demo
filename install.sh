l
#!/bin/bash

# install Python pip
sudo apt-get install python-pip libxml2-dev libxslt1-dev -y

# install Ansible
sudo pip install markupsafe
sudo pip install ansible

# install Python Comware library
cd ~
git clone https://github.com/HPENetworking/pyhpecw7
cd pyhpecw7
sudo python setup.py install
cd ..

# download Comware modules for Ansible
git clone https://github.com/HPENetworking/ansible-hpe-cw7

# download OneView modules for Ansible
git clone https://github.com/HewlettPackard/oneview-ansible.git

# configure Ansible to look for modules
echo "[defaults]" > ~/.ansible.cfg
echo "library = ~/ansible-hpe-cw7/library/::~/oneview-ansible/library" >> ~/.ansible.cfg
