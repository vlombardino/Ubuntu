# List of useful commands for Ubuntu

### Add user scripts
```bash
mkdir -p .local/bin
nano .local/bin/script.sh
chmod +x .local/bin/script.sh
source ~/.profile
```

### Remove old kernels
```bash
sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge
```

### Update current kernel
```bash
sudo update-initramfs -u -k $(uname -r)
```

### Upgrade to newest kernel
```bash
sudo apt full-upgrade -y
```
