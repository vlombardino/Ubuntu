#!/bin/bash

############################################################
### Notes
############################################################
### empty buffer and cache
#sudo sh -c "free -h && sync && echo 3 > /proc/sys/vm/drop_caches && free -h"
### free page cache
#sudo sh -c "echo 1 > /proc/sys/vm/drop_caches"
### free dentries and inodes
#sudo sh -c "echo 2 > /proc/sys/vm/drop_caches"
### free page cache, dentries, and inodes
#sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"

############################################################
### VARIABLES
############################################################
### Free page cache, dentries, and inodes
root_command='echo 3 > /proc/sys/vm/drop_caches'
user_command='sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"'

############################################################
### FUNCTIONS
############################################################
### Test for sudo user ###
function sudo_test
{
if [ $(groups | grep -cE '\b(sudo|wheel)\b') -eq 0 ]; then
   clear
   echo
   echo "Only members of the sudo or wheel group can run this script!"
   echo
   read -p "Press enter to exit! " var
   echo
   exit 1
fi
}

### Status bar
function status_bar
{
  local pid=$1
  local delay=0.5  # Adjust the refresh rate as needed
  
  echo -n "Running to empty buffer and cache:"
  echo
  while ps -p $pid > /dev/null; do
    echo -n "#"
    sleep $delay
  done
}

### Displays status bar
function display_status
{
  command_pid=$!
  
  # Display the status bar while the command is running
  echo
  status_bar $command_pid
  echo

  # Print "Finished" when the command is done
  echo "Finished"
}

############################################################
### Start Script
############################################################
sudo_test

if [ "$(id -u)" -eq 0 ]; then
  # Run the command as root
  eval "$root_command" &
  display_status
  echo
else
  # Run the command as a regular user with sudo
  sudo -v
  eval "$user_command" &
  display_status
  echo
fi
