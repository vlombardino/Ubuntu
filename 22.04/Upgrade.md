### Upgrade Notes

Before release day
```
sudo do-release-upgrade -d
```

After release day
```
sudo do-release-upgrade -c
```

### Desktop Theming
```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```
```
gsettings set org.gnome.mutter auto-maximize false
```
```
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
```
```
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
```
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

Google Chrome Remote Desktop
```
mkdir ~/.config/chrome-remote-desktop
cd Downloads
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg -i chrome-remote-desktop_current_amd64.deb
```

LibreOffice
```
sudo add-apt-repository ppa:libreoffice
sudo apt update
sudo apt install libreoffice
libreoffice --version
```

AppImage Launcher
```
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher
```

### Misc

Fix flatpak
```
sudo flatpak repair
```

Install or Re-Install numlockx
```
sudo apt install numlockx
numlockx on
```

#### Fix Wayland login

Chrome Remote Desktop. Move folder
```
mv ~/.config/chrome-remote-desktop ~/.config/chrome-remote-desktop.bak
```
Wayland (loop). Reset ~/.config or ~/.local or ~/.cache
```
mv ~/.config ~/config.bak
mv ~/.local ~/local.bak
mv ~/.cache ~/cache.bak
```
