#!/bin/bash
#
# Configure network configuration
# Contributed by: TA Bathula Sharath Kumar
#

echo "Enter network configuration variables:"
read -rp "Enter an IP address: " ip_addr
read -rp "Enter a subnet mask: " subnet_mask
read -rp "Enter a Gateway address: " gateway
read -rp "Enter a DNS address: " dns

# Configure network interface
if sudo ifconfig eth0 "$ip_addr" netmask "$subnet_mask" up; then
  # Set default gateway
  if sudo route add default gw "$gateway"; then
    # Set DNS servers
    if echo "nameserver $dns" | sudo tee /etc/resolv.conf ; then
      echo "----------------------------------------------"
      echo "Network configuration completed"
      echo "----------------------------------------------"
    else
      echo "Error setting DNS server"
    fi
  else
    echo "Error setting default gateway"
  fi
else
  echo "Error setting IP address"
fi

