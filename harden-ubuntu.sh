#!/usr/bin/env bash
# File: harden-ubuntu.sh
# Description: Baseline security hardening script for fresh Ubuntu servers.

set -e

if [ "$EUID" -ne 0 ]; then
  echo "Error: Please run this script as root or using sudo."
  exit 1
fi

echo "=========================================="
echo " Running Ubuntu Baseline Security Setup"
echo "=========================================="

echo "1. Updating package indexes and upgrading system..."
apt-get update -y && apt-get upgrade -y

echo "2. Installing security essentials (UFW, Fail2ban)..."
apt-get install -y ufw fail2ban

echo "3. Configuring UFW Firewall..."
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp comment 'SSH'
ufw allow 80/tcp comment 'HTTP'
ufw allow 443/tcp comment 'HTTPS'
ufw --force enable

echo "4. Enabling Fail2ban Service..."
systemctl enable fail2ban
systemctl start fail2ban

echo "=========================================="
echo " Server hardening complete!"
echo " Ports 22, 80, and 443 are OPEN. All other incoming traffic is BLOCKED."
echo "=========================================="
