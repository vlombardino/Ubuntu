# List of useful commands for Ubuntu

### Remove old kernels
sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge

### Update current kernel
sudo update-initramfs -u -k $(uname -r)

### Upgrade to newest kernel
sudo apt full-upgrade -y