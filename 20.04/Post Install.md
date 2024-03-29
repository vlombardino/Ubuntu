# Ubuntu 20.04

## Software

Initial software for the Desktop and/or Server
```
sudo apt install openssh-server vim
```
## Software (Desktop)
Additional software for the Desktop
```
sudo apt install gnome-tweaks gdebi synaptic apt-xapian-index gnome-system-monitor libgtop2-dev neofetch
```


## Repository Software

Restricted Extras
```
sudo apt install ubuntu-restricted-extras
#DVD support
sudo apt –no-install-recommends install libdvd-pkg
sudo dpkg-reconfigure libdvd-pkd
```

Install Flatpak
```
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
> Flatpak locations

```
/var/lib/flatpak/
~/.local/share/flatpak/
~/.var/app/
```

## Third Party Software

### [Snap](https://snapcraft.io/)
List of popular software

[Remmina](https://snapcraft.io/remmina): ```sudo snap install remmina```

[scrcpy](https://snapcraft.io/scrcpy): ```sudo snap install scrcpy```

[bashtop](https://snapcraft.io/bashtop): ```sudo snap install bashtop```

[Flameshot](https://snapcraft.io/flameshot): ```sudo snap install flameshot```

[Video Downloader](https://snapcraft.io/video-downloader): ```sudo snap install video-downloader```

[LosslessCut](https://snapcraft.io/losslesscut): ```sudo snap install losslesscut```

[Color Picker](https://snapcraft.io/color-picker): ```sudo snap install color-picker```

---

### [Flatpak](https://flathub.org/)
List of popular software

[Chromium Web Browser](https://flathub.org/apps/details/org.chromium.Chromium): ```flatpak install flathub org.chromium.Chromium```

[Tor Browser Launcher](https://flathub.org/apps/details/com.github.micahflee.torbrowser-launcher): ```flatpak install flathub com.github.micahflee.torbrowser-launcher```

[Bottles](https://flathub.org/apps/details/com.usebottles.bottles): ```flatpak install flathub com.usebottles.bottles```

[Shotcut](https://flathub.org/apps/details/org.shotcut.Shotcut): ```flatpak install flathub org.shotcut.Shotcut```

[Video Trimmer](https://flathub.org/apps/details/org.gnome.gitlab.YaLTeR.VideoTrimmer): ```flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer```

[gThumb Image Viewer](https://flathub.org/apps/details/org.gnome.gThumb): ```flatpak install flathub org.gnome.gThumb```

[Audacity](https://flathub.org/apps/details/org.audacityteam.Audacity): ```flatpak install flathub org.audacityteam.Audacity```

[MakeMKV](https://flathub.org/apps/details/com.makemkv.MakeMKV): ```flatpak install flathub com.makemkv.MakeMKV```

[MediaInfo](https://flathub.org/apps/details/net.mediaarea.MediaInfo): ```flatpak install flathub net.mediaarea.MediaInfo```

[GitHub Desktop](https://flathub.org/apps/details/io.github.shiftey.Desktop): ```flatpak install flathub io.github.shiftey.Desktop```

[Parsec](https://flathub.org/apps/details/com.parsecgaming.parsec): ```flatpak install flathub com.parsecgaming.parsec```

[FileZilla](https://flathub.org/apps/details/org.filezillaproject.Filezilla): ```flatpak install flathub org.filezillaproject.Filezilla```

---

### [AppImage](https://appimage.github.io/)

Flatpack App\
[AppImage](https://flathub.org/apps/details/io.github.prateekmedia.appimagepool): ```flatpak install flathub io.github.prateekmedia.appimagepool```

Ubuntu Repository\
[AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) ```sudo apt install appimagelauncher```

---

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

[TeejeeTech](https://teejeetech.in/)
```
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo apt update
sudo apt install aptik aptik-gtk
#Kernel update utility
sudo apt install ukuu
sudo apt install haveged
```

grub customizer
```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer
```

Stacer
> Linux System Optimizer and Monitoring
```
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt update
sudo apt install stacer
```

## Desktop Theming
New Document - Right Click
```
touch ~/Templates/Empty\ Document
```

Menu Editor
```
sudo apt install menulibre
```

Communitheme
```
sudo snap install communitheme
```
> Log out select communitheme

Minimize on click
```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

Auto maximize apps
```
gsettings set org.gnome.mutter auto-maximize false
```

Add trash icon to dock
```
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
```

Show Apps at Top
```
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
```

Disable password request after suspend
```
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
```

Disable lock screen
```
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
```

Workspace Dual Monitors
```
gsettings set org.gnome.mutter workspaces-only-on-primary false
```

Customise Dash-To-Dock
```
sudo apt install dconf-editor
```
> -org ▹ gnome ▹ shell ▹ extensions ▹ dash-to-dock
> -show-apps-at-top
> -unity-backlit-items


### Gnome Extensions
Gnome Extensions Connector
```
sudo apt install chrome-gnome-shell
```

Applications launcher: [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)

Show the Suspend Button on shutdown menu: [Suspend Button](https://extensions.gnome.org/extension/826/suspend-button/)

Disable screen shield when screen lock is disabled: [Disable screen shield](https://extensions.gnome.org/extension/672/disable-screen-shield/)

Workspace Indicator for the panel: [Workspace Indicator](https://extensions.gnome.org/extension/21/workspace-indicator/)

Move applications to specific workspaces: [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/)

Display system information: [System Monitor](https://extensions.gnome.org/extension/120/system-monitor/), [System Monitor Next](https://extensions.gnome.org/extension/3010/system-monitor-next/)

Show extensions top panel: [Extensions](https://extensions.gnome.org/extension/1036/extensions/)

Volume control of the overall output volume: [Volume control](https://extensions.gnome.org/extension/937/laine/)

GSConnect for Gnome Shell
[GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
> Install KDE Connect Android app from Google Play

## Misc

Gnome application launchers location
```
/usr/share/applications
~/.local/share/applications
```

[Gnome Cedilla Fix](https://github.com/marcopaganini/gnome-cedilla-fix)
```
wget -q https://raw.githubusercontent.com/marcopaganini/gnome-cedilla-fix/master/fix-cedilla -O fix-cedilla
chmod 755 fix-cedilla
./fix-cedilla
```
> Settings ▹ Region & Language ▹ Input Sources: English(US, intl., with dead keys)

VNC Share Desktop
```
sudo apt install vino
Open settings panel: Setting -> Sharing -> Screen Sharing
#Start vino-server at login
/usr/lib/vino/vino-server
```

exFAT Drive
```
sudo apt install exfat-fuse exfat-utils
```

Managing Logitech’s Unifying Receiver
```
sudo apt install solaar-gnome3
```

Fix Bluetooth
```
dpkg --status bluez | grep '^Version:'
sudo add-apt-repository ppa:bluetooth/bluez
sudo apt update && sudo apt upgrade
```

Change LibreOffice style to Ribon bar
> -Tools ▹ Options

> -Advanced ▹ Enable experimental features

> -Restart LibreOffice

> -View ▹ Toolbar Layout

---

### Nvidia
> Install latest Nvidia drivers

Show video card details
```
sudo lshw -c display
```
Or
```
sudo lshw -c video
```
Install Nvidia drivers
```
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
```
Or
```
sudo apt install nvidia-driver-390
```
Remove Nvidia Drivers
```
sudo apt purge nvidia-*
sudo apt autoremove
```
Remove Nvidia PPA
```
sudo add-apt-repository --remove ppa:graphics-drivers/ppa
```

---

### Kdenlive
Dark Theme
```
sudo apt install kde-style-breeze-qt4
sudo apt install breeze-gtk-theme
```

---

### Mate 
New Welcome Screen
```
snap install ubuntu-mate-welcome --classic
snap install software-boutique --classic
snap install pulsemixer
```
