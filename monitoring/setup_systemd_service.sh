#!/bin/bash

# sudo vim /etc/systemd/system/prometheus.service
# sudo vim /etc/systemd/system/prometheus-blackbox.service
# sudo vim /etc/systemd/system/prometheus-alertmanager.service

# Copy systemd unit files
cp systemd/prometheus.service /etc/systemd/system/prometheus.service
cp systemd/prometheus-blackbox.service /etc/systemd/system/prometheus-blackbox.service
cp systemd/prometheus-alertmanager.service /etc/systemd/system/prometheus-alertmanager.service

# Setup systemd Service - Prometheus
systemctl start prometheus.service # Start the service
systemctl status prometheus.service # Check the service status
systemctl enable prometheus.service # Enable the service to automatically startup at boot

# Setup systemd Service - Blackbox Exporter
systemctl start prometheus-blackbox.service # Start the service
systemctl status prometheus-blackbox.service # Check the service status
systemctl enable prometheus-blackbox.service # Enable the service to automatically startup at boot

# Setup systemd Service - AlertManager
systemctl start prometheus-alertmanager.service # Start the service
systemctl status prometheus-alertmanager.service # Check the service status
systemctl enable prometheus-alertmanager.service # Enable the service to automatically startup at boot
