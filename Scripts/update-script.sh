#!/bin/sh

sudo apt update && \
#sudo apt upgrade -y && \
#sudo apt dist-upgrade -y && \
sudo apt full-upgrade -y && \
sudo apt autoremove -y && \
sudo apt clean -y && \
sudo apt autoclean -y

#optional
#sudo snap refresh
#sudo flatpak update -y
