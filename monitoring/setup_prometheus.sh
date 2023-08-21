#!/bin/bash

set -e

# Install Prometheus
echo "\n-Installing Prometheus..."
cd /opt
mkdir -p prometheus
cd prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.23.0/prometheus-2.23.0.linux-amd64.tar.gz
tar xvfz prometheus-2.23.0.linux-amd64.tar.gz
echo "-Installing Prometheus - Done"

# Install Blackbox Exporter for Prometheus
echo "\n-Installing Blackbox Exporter for Prometheus..."
wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.18.0/blackbox_exporter-0.18.0.linux-amd64.tar.gz
tar xvfz blackbox_exporter-0.18.0.linux-amd64.tar.gz
echo "-Installing Blackbox Exporter for Prometheus - Done"

# Install AlertManager for Prometheus
echo "\n-Installing AlertManager for Prometheus..."
wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz
tar xvfz alertmanager-0.21.0.linux-amd64.tar.gz
echo "-Installing AlertManager for Prometheus - Done"
