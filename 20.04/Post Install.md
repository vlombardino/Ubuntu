# Ubuntu 20.04

## Software

Initial Software
```
sudo apt install openssh-server vim gdebi
```

## Repository Software

Additional Software
```
sudo apt install gnome-tweaks synaptic apt-xapian-index gnome-system-monitor libgtop2-dev
sudo apt install chromium-browser handbrake vlc audacity gimp libreoffice neofetch gthumb flameshot
```

Restricted Extras
```
sudo apt install ubuntu-restricted-extras
#DVD support
sudo apt –no-install-recommends install libdvd-pkg
sudo dpkg-reconfigure libdvd-pkd
```

Install flatpak
```
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

VNC Share Desktop
```
sudo apt install vino
Open settings panel: Setting -> Sharing -> Screen Sharing
#Start vino-server at login
/usr/lib/vino/vino-server
```

Scrcpy
> Mirror & Control Your Android Phone
```
sudo snap install scrcpy

cat << EOF >>  ~/.local/share/applications/android-mirror.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Android Mirror
Comment=Mirror & Control Your Android
Icon=phone
Exec=scrcpy
Categories=GNOME;Application
X-Ubuntu-Gettext-Domain=scrcpy
Name[en_US]=Android Mirror
EOF

sudo xdg-desktop-menu forceupdate --mode system
```

exFAT Drive
```
sudo apt install exfat-fuse exfat-utils
```

Managing Logitech’s Unifying Receiver
```
sudo apt install solaar-gnome3
```

## Third Party Software

Google Chrome
```
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
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

GitHub Desktop
```
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update
sudo apt install github-desktop
```

Remmina
```
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret remmina-plugin-spice
sudo killall remmina
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

youtube-dlg
```
sudo apt install update
wget http://ubuntu.mirrors.tds.net/ubuntu/pool/universe/t/twodict/python-twodict_1.2-1_all.deb
sudo apt install ./python-twodict_1.2-1_all.deb
wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/y/youtube-dlg/youtube-dlg_0.4-1~webupd8~disco0_all.deb
sudo apt install ./youtube-dlg_0.4-1~webupd8~disco0_all.deb
sudo apt install youtube-dl
sudo apt install ffmpeg
rm python-twodict_1.2-1_all.deb youtube-dlg_0.4-1~webupd8~disco0_all.deb
```

MakeMKV
```
sudo add-apt-repository ppa:heyarje/makemkv-beta
sudo apt update
sudo apt install makemkv-bin makemkv-oss
```

## Desktop Theming
New Document - Right Click
```
touch ~/Templates/Empty\ Document
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

Menu Editors
```
sudo apt instll alacarte
```
Or
```
sudo apt install menulibre
```

Kdenlive Dark Theme
```
sudo apt install kde-style-breeze-qt4
sudo apt install breeze-gtk-theme
```

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

[Gnome Cedilla Fix](https://github.com/marcopaganini/gnome-cedilla-fix)
```
wget -q https://raw.githubusercontent.com/marcopaganini/gnome-cedilla-fix/master/fix-cedilla -O fix-cedilla
chmod 755 fix-cedilla
./fix-cedilla
```
> Settings ▹ Region & Language ▹ Input Sources: English(US, intl., with dead keys)

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

## Install latest Nvidia drivers
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

## Mate 
New Welcome Screen
```
snap install ubuntu-mate-welcome --classic
snap install software-boutique --classic
snap install pulsemixer
```
