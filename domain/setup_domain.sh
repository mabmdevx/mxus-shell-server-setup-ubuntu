#!/bin/bash

set -e

SITE=$1

if [[ -z $SITE ]]; then
    echo " - Usage: ./setup_domain.sh  [domainname] "
    exit 1
fi

echo "Creating directory - /var/www/html/"$SITE"/public_html"
mkdir -p /var/www/html/"$SITE"/public_html
echo -e "Done\n"

echo "Creating directory - /var/www/html/"$SITE"/logs"
mkdir /var/www/html/"$SITE"/logs
echo -e "Done\n"

echo "Creating Apache conf file"
sed -e "s/\${sample}/$SITE/" sample_domain.conf > /etc/apache2/sites-available/"$SITE".conf
echo -e "Done\n"
          
echo "Setting ownership"
chown srvadmin:srvadmin /var/www/html/"$SITE"/ -R
echo -e "Done\n"

echo "Setting permissions"
chmod 775 /var/www/html/"$SITE"/ -R  
echo -e "Done\n"

echo "Enabling Apache2 site"
sudo a2ensite "$SITE".conf
echo -e "Done\n"
    
echo "Reload Apache2 configuration" 
sudo service apache2 reload
echo -e "Done\n"
