# Chrome Remote Desktop Headless Ubuntu Server

### Operating System & Software
- [Ubuntu Server 22.04](https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso)
- Chrome Remote Desktop

### Install required software
```bash
sudo apt install openssh-server vim wget
```

### Install ubuntu desktop
```bash
sudo apt install ubuntu-desktop-minimal
```

### Download and install Chrome Remote Desktop
```bash
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg -i chrome-remote-desktop_current_amd64.deb
sudo apt install -y --fix-broken
```

### Set Chrome Remote Desktop session to use Gnome
```bash
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'
```

## Add authorization from account
* Go to: https://remotedesktop.google.com/headless
* Select: Set up via SSH -> Begin -> Next -> Authorize
* Run output from Debian Linux in a terminal on the headless ubuntu server
* Follow the prompt in the terminal
* Ignore errors

### Verify service is running
```bash
sudo systemctl status chrome-remote-desktop@$USER
```

### Reboot system
```bash
sudo reboot
```

## Configure Desktop
> The following will change default Gnome to Ubuntu Gnome
```bash
vi ~/.xsessionrc 
```
> with the following content:
```
export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg
```

## Install Chrome
```bash
sudo wget -O- https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable -y
```

## Notes:
Disable gd3
```bash
sudo systemctl disable gdm3.service
```

Show dock in Gnome
```bash
gnome-extensions enable ubuntu-dock@ubuntu.com
```

Additional extensions for Gnome
```bash
sudo apt-get install chrome-gnome-shell
```
[Applications Menu](https://extensions.gnome.org/extension/6/applications-menu/?ref=itsfoss.com) \
[Places Status Indicator](https://extensions.gnome.org/extension/8/places-status-indicator) \
[DashBar](https://extensions.gnome.org/extension/5143/dashbar)
