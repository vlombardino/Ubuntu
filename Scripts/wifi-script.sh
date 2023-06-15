#!/bin/bash

# Detect the active wireless interface name
interface=$(nmcli device | grep wifi\ | awk '{print $1}')
echo
echo "The name of your wireless interface is: [$interface]"

# Check wireless signal strength and restart radio
echo -e "Checking on singal strength... \n"
wifi_signal=$(nmcli -f ACTIVE,SIGNAL dev wifi list | awk '$1=="yes" {print $2}')
if [ -z "$wifi_signal" ]; then
  echo "Signal strength is not available, attempting to enable Wi-Fi, reset intel modules and restart Network Manager..."
  echo " * Turning on Wifi on"
  nmcli radio wifi on
  echo " * Enabling wifi device"
  sudo rfkill unblock wifi
  echo " * Disable intel wifi driver"
  sudo rmmod iwlmvm iwlwifi
  echo " * Enable intel wifi driver"
  sudo modprobe iwlmvm iwlwifi
  echo -e " * Restarting Network Manager \n"
  sudo systemctl restart NetworkManager
  echo "Wait for Wifi Network to reset:"
  for i in {01..05}; do sleep 1; printf "\r $i"; done
  echo
  wifi_signal=$(nmcli -f ACTIVE,SIGNAL dev wifi list | awk '$1=="yes" {print $2}')
  if [ -n "$wifi_signal" ]; then
    echo
    echo -e "Signal strength is: $wifi_signal dBm \n"
    echo -e "*** Everything appears to be running properly *** \n"
  else
    echo "Unable to get a Wifi signal, please refere to the site for more troublshooting"
  fi
else 
  echo -e "Signal strength is: $wifi_signal dBm \n"
  echo -e "*** Everything appears to be running properly *** \n"
fi

# Check if any VPN connection is active
echo "Checking OpenVPN installation:"
if command -v openvpn > /dev/null; then
  echo " - OpenVPN is installed."
else
  echo " - OpenVPN is not installed."
fi
if ip addr show tun0 > /dev/null 2>&1; then
  echo -e " - A VPN connection is active. \n"
else
  echo -e " - No VPN connection is active. \n"
fi

# Check WiFi Connections
echo "Showing available Wifi conections: "
nmcli device wifi list
