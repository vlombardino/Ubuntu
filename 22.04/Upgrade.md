### Upgrade Notes

Terminal
```bash
sudo do-release-upgrade -d
```

Desktop
```bash
sudo apt update
sudo apt upgrade
sudo reboot

sudo update-manager -c -d
```

Clean up Repos
```bash
cd /etc/apt/sources.list.d
ls -lh
```

### Desktop Theming
```bash
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```
```bash
gsettings set org.gnome.mutter auto-maximize false
```
```bash
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
```
```bash
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
```

### Gnome Extensions

[Vitals](https://extensions.gnome.org/extension/1460/vitals/)

[Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/)

[Workspace Indicator](https://extensions.gnome.org/extension/3968/improved-workspace-indicator/)

[System Monitor](https://extensions.gnome.org/extension/3010/system-monitor-next/)

[Workspace Scroll](https://extensions.gnome.org/extension/701/top-panel-workspace-scroll/)

### PPAs and DEB Files 

Google Chrome
```bash
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
```

Google Chrome Remote Desktop
```bash
mkdir ~/.config/chrome-remote-desktop
cd Downloads
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb
rm chrome-remote-desktop_current_amd64.deb
```

LibreOffice
```bash
sudo add-apt-repository ppa:libreoffice
sudo apt update
sudo apt install libreoffice
libreoffice --version
```

AppImage Launcher
```bash
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher
```

### Misc

Fix flatpak
```bash
sudo flatpak repair
```

Install or Re-Install numlockx
```bash
sudo apt install numlockx
numlockx on
```

#### Fix Wayland login

Chrome Remote Desktop. 
> Chrome Remote Desktop can prevent a user to login.
> Move the folder to home directory to fix.
```bash
mv ~/.config/chrome-remote-desktop ~/chrome-remote-desktop.bak
```

Wayland (loop). 
> To troubleshoot login errors reset ~/.config or ~/.local or ~/.cache
```bash
mv ~/.config ~/config.bak
mv ~/.local ~/local.bak
mv ~/.cache ~/cache.bak
```
