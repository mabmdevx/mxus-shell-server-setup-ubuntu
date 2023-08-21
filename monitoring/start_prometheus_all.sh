#!/bin/bash

set -e

# Start Prometheus
echo -e "\n-Starting Prometheus..."
cd /opt/prometheus
cd prometheus*
./prometheus --web.enable-admin-api --web.enable-lifecycle &
echo -e "\n-Starting Prometheus - Done"

# Start Blackbox Exporter for Prometheus
echo -e "\n-Starting Blackbox Exporter for Prometheus..."
cd /opt/prometheus
cd blackbox*
./blackbox_exporter &
echo -e "\n-Starting Blackbox Exporter for Prometheus - Done"

