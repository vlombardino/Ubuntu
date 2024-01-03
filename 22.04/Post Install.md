# Ubuntu 22.04

## Software

Turn off ```apt_news```
```
sudo pro config set apt_news=false
```

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
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
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

[Warehouse (flatpaks manager)](https://flathub.org/apps/io.github.flattool.Warehouse): ```sudo flatpak install flathub io.github.flattool.Warehouse```

[Flatseal (flatpaks permissions manager)](https://flathub.org/apps/com.github.tchx84.Flatseal): ```sudo flatpak install flathub com.github.tchx84.Flatseal```

[Extension Manager (GNOME Shell Extensions manager)](https://flathub.org/apps/details/com.mattjakeman.ExtensionManager): ```sudo flatpak install flathub com.mattjakeman.ExtensionManager```

[Chromium Web Browser](https://flathub.org/apps/details/org.chromium.Chromium): ```sudo flatpak install flathub org.chromium.Chromium```

[Tor Browser Launcher](https://flathub.org/apps/details/com.github.micahflee.torbrowser-launcher): ```sudo flatpak install flathub com.github.micahflee.torbrowser-launcher```

[Bottles](https://flathub.org/apps/details/com.usebottles.bottles): ```sudo flatpak install flathub com.usebottles.bottles```

[Shotcut](https://flathub.org/apps/details/org.shotcut.Shotcut): ```sudo flatpak install flathub org.shotcut.Shotcut```

[Video Trimmer](https://flathub.org/apps/details/org.gnome.gitlab.YaLTeR.VideoTrimmer): ```sudo flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer```

[Parabolic (Download web video and audio)](https://flathub.org/apps/org.nickvision.tubeconverter): ```sudo flatpak install flathub org.nickvision.tubeconverter```

[gThumb Image Viewer](https://flathub.org/apps/details/org.gnome.gThumb): ```sudo flatpak install flathub org.gnome.gThumb```

[Audacity](https://flathub.org/apps/details/org.audacityteam.Audacity): ```sudo flatpak install flathub org.audacityteam.Audacity```

[MakeMKV](https://flathub.org/apps/details/com.makemkv.MakeMKV): ```sudo flatpak install flathub com.makemkv.MakeMKV```

[MediaInfo](https://flathub.org/apps/details/net.mediaarea.MediaInfo): ```sudo flatpak install flathub net.mediaarea.MediaInfo```

[GitHub Desktop](https://flathub.org/apps/details/io.github.shiftey.Desktop): ```sudo flatpak install flathub io.github.shiftey.Desktop```

[Parsec](https://flathub.org/apps/details/com.parsecgaming.parsec): ```sudo flatpak install flathub com.parsecgaming.parsec```

[FileZilla](https://flathub.org/apps/details/org.filezillaproject.Filezilla): ```sudo flatpak install flathub org.filezillaproject.Filezilla```

[Mission Center](https://flathub.org/apps/io.missioncenter.MissionCenter): ```sudo flatpak install flathub io.missioncenter.MissionCenter```

---

### [AppImage](https://appimage.github.io/)

Flatpack App\
[AppImage](https://flathub.org/apps/details/io.github.prateekmedia.appimagepool): ```sudo flatpak install flathub io.github.prateekmedia.appimagepool```

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

Google Chrome from Repository
```
wget -qO - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/google-chrome.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update && sudo apt install google-chrome-stable -y
#or
sudo apt update && sudo apt install google-chrome-beta -y
#or
sudo apt update && sudo apt install google-chrome-unstable -y
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

Minimize on click
```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

Auto maximize apps
```
gsettings set org.gnome.mutter auto-maximize false
```

Nautilus switch from button-based to pathbar
```
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
```

Background solid color
```
gsettings set org.gnome.desktop.background picture-uri none
gsettings set org.gnome.desktop.background primary-color '#164863'
gsettings set org.gnome.desktop.background color-shading-type 'solid'
```

Menu Editor
```
sudo apt install menulibre
```

### Gnome Extensions
Gnome Extensions Connector
```
sudo apt install chrome-gnome-shell
```

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


exFAT Drive
```
sudo apt install exfat-fuse exfat-utils
```

Managing Logitech’s Unifying Receiver
```
sudo apt install solaar-gnome3
```

Change LibreOffice style to Ribon bar
> -Tools ▹ Options

> -Advanced ▹ Enable experimental features

> -Restart LibreOffice

> -View ▹ Toolbar Layout

[xRDP](https://c-nergy.be/blog/?cat=79)
```
wget -q -O xrdp-installer.zip https://www.c-nergy.be/downloads/xRDP/xrdp-installer-1.4.4.zip && unzip xrdp-installer.zip && rm xrdp-installer.zip

chmod +x  ~/Downloads/xrdp-installer-*.sh
```
Install xRDP with sound
```
./xrdp-installer-1.4.4.sh -s
```

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
