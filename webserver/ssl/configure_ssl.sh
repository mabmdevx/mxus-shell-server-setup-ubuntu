#!/bin/bash

# Install openssl
sudo apt-get update
sudo apt-get install -y openssl

# Enable the Apache SSL mod
sudo a2enmod ssl
sudo service apache2 restart

# Enable the default SSL site
sudo a2ensite default-ssl
sudo service apache2 restart
a
# Enable mod rewrite
sudo a2enmod rewrite
sudo service apache2 restart

# Copy SSL options conf file to apache2 dir
cp options-ssl-apache2.conf /etc/apache2
