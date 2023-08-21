#!/bin/bash

echo "Disable Default site"
mv /var/www/html/index.html /var/www/html/index.html.old
a2dissite 000-default.conf
echo -e "Done\n"

