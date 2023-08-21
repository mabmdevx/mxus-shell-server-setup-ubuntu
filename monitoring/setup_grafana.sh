#!/bin/bash

# Install Grafana
echo "Install Grafana"
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -


# Alternatively you can add the beta repository, see in the table above
sudo add-apt-repository "deb https://packages.grafana.com/enterprise/deb stable main"

sudo apt-get update
sudo apt-get install -y grafana-enterprise
sudo /bin/systemctl start grafana-server
echo -e "Done\n"
