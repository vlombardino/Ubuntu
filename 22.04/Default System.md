# Install Required Software [Ubuntu 22.04.2]

### Create bin file
```bash
touch ~/.local/bin/required-check
chmod +x ~/.local/bin/required-check
gedit ~/.local/bin/required-check
```
### Install default kernel
```bash
sudo apt install linux-image-generic
sudo apt install linux-headers-generic
```

### Install default kernel for 22.04.2
```bash
sudo apt install linux-image-generic-hwe-22.04
sudo apt install linux-headers-generic-hwe-22.04
```

### Install linux headers for current kernel
```bash
sudo apt install linux-headers-$(uname -r)
```

### Install firmware package
```bash
sudo apt install linux-firmware
```

### Ubuntu Update Firmware
```bash
sudo fwupdmgr refresh
sudo fwupdmgr update
```

### Update modules
```bash
sudo update-initramfs -u -k $(uname -r)
```
---

# Reinstall Required Software [Ubuntu 22.04.2]

### Create bin file
```bash
touch ~/.local/bin/required-reinstall
chmod +x ~/.local/bin/required-reinstall
gedit ~/.local/bin/required-reinstall
```

### Install default kernel
```bash
sudo apt reinstall linux-image-generic
sudo apt reinstall linux-headers-generic
```

### Install default kernel for 22.04.2
```bash
sudo apt reinstall linux-image-generic-hwe-22.04
sudo apt reinstall linux-headers-generic-hwe-22.04
```

### Install linux headers for current kernel
```bash
sudo apt reinstall linux-headers-$(uname -r)
```

### Install firmware package
```bash
sudo apt reinstall linux-firmware
```

# Ubuntu Update Firmware
```bash
sudo fwupdmgr refresh
sudo fwupdmgr update
```

### Update modules
```bash
sudo update-initramfs -u -k $(uname -r)
```
