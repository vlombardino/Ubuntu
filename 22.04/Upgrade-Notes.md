gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

gsettings set org.gnome.mutter auto-maximize false

gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false

gsettings set org.gnome.desktop.lockdown disable-lock-screen true

sudo flatpak repair

numlockx on
#might have to add it to start up.

https://extensions.gnome.org/extension/1460/vitals/
https://extensions.gnome.org/extension/16/auto-move-windows/
https://extensions.gnome.org/extension/3968/improved-workspace-indicator/
https://extensions.gnome.org/extension/3010/system-monitor-next/
https://extensions.gnome.org/extension/701/top-panel-workspace-scroll/

Can't login to Wayland (loop)
Reset ~/.config file


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
