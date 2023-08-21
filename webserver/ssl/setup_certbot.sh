#!/bin/bash

mkdir /etc/letsencrypt

cd /etc/letsencrypt

wget https://raw.githubusercontent.com/certbot/certbot/75499277be6699fd5a9b884837546391950a3ec9/certbot-auto

chmod +x ./certbot-auto

./certbot-auto --no-self-upgrade

