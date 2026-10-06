#!/bin/bash

echo "========================================"
echo "       INFRAFORGE SYSTEM INVENTORY"
echo "========================================"

echo
echo "### SYSTEM INFORMATION ###"
echo "Hostname       : $(hostname)"
echo "Operating System: $(cat /etc/redhat-release)"
echo "Kernel         : $(uname -r)"
echo "Architecture   : $(uname -m)"

echo
echo "### VIRTUALIZATION ###"
echo "Platform       : $(systemd-detect-virt)"

echo
echo "### CPU ###"
echo "CPU Cores      : $(nproc)"
lscpu | grep -E 'Model name|CPU\(s\):' | head -2

echo
echo "### MEMORY ###"
free -h

echo
echo "### STORAGE ###"
lsblk

echo
echo "### NETWORK ###"
ip -br addr

echo
echo "### ROUTING ###"
ip route

echo
echo "### SSH SERVICE ###"
echo "Status         : $(systemctl is-active sshd)"

echo
echo "### UPTIME ###"
uptime

echo
echo "========================================"
echo "    INVENTORY COLLECTION COMPLETE"
echo "========================================"
