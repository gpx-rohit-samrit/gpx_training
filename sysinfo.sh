#!/bin/sh

echo "System information"
echo "=================="
echo "Current user: $(whoami)"
echo "Machine name: $(hostname)"
echo "operation system :$(uname -a)"
echo "Total CPU cores: $(lscpu | grep '^CPU(s):' | awk '{print $2}')"
echo "Total RAM: $(free -h | grep '^Mem:' | awk '{print $2}')"
echo "Used RAM: $(free -h | grep '^Mem:' | awk '{print $3}')"