#!/bin/bash

# Install JDK
sudo apt-get install -y default-jdk

# Install ElasticSearch
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update
sudo apt-get install -y elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch

# Update elasticsearch.yml - Follow: https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kib$

# Install Kibana
sudo apt-get install -y kibana
sudo systemctl enable kibana
sudo systemctl start kibana

# Install Logstash
sudo apt-get install -y logstash
sudo systemctl start logstash
sudo systemctl enable logstash

# Install Filebeat
sudo apt-get install -y filebeat
