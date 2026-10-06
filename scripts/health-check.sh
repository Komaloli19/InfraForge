#!/bin/bash

echo "========================================"
echo "        INFRAFORGE HEALTH CHECK"
echo "========================================"

echo
echo "### SYSTEM ###"
echo "Hostname        : $(hostname)"
echo "Operating System: $(cat /etc/redhat-release)"

echo
echo "### CPU ###"
echo "CPU Cores       : $(nproc)"

echo
echo "### MEMORY ###"
free -h

echo
echo "### DISK USAGE ###"
df -h /

echo
echo "### NETWORK ###"
ip -br addr show ens160

echo
echo "### SSH SERVICE ###"
if systemctl is-active --quiet sshd; then
    echo "SSH Status      : PASS - active"
else
    echo "SSH Status      : FAIL - inactive"
fi

echo
echo "### SYSTEM UPTIME ###"
uptime

echo
echo "========================================"
echo "       HEALTH CHECK COMPLETED"
echo "========================================"

## NOTE ## 
----bash
chmod +x scripts/health-check.sh
ls -l scripts/health-check.sh
./scripts/health-check.sh

