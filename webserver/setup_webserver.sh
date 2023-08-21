#!/bin/bash

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt-get install mysql-server -y
echo -e "\nDone\n"

# Install PHP
echo "Installing PHP.."
sudo apt-get install php -y
sudo apt-get install php-mysql -y
sudo apt-get install php-curl -y
sudo apt-get install php-mcrypt -y
sudo apt-get install php7.0-mbstring php7.0-zip php7.0-xml -y
echo -e "\nDone\n"

# Install Apache
echo "Installing Apache..."
sudo apt-get install apache2 -y
sudo apt-get install libapache2-mod-php -y
sudo service apache2 restart
echo -e "\nDone\n"
