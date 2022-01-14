### Installing xRDP
```
sudo apt install xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo ufw allow 3389
```

### Fix error "*Authentication required to create managed color device.*"
```
sudo bash -c "cat >/etc/polkit-1/localauthority/50-local.d/45-allow.colord.pkla" <<EOF
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOF
```

### Fix error "Authentication required to refresh system repositories."
```
sudo bash -c "cat >/etc/polkit-1/localauthority/50-local.d/46-allow.update-repo.pkla" <<EOF
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOF
```

### Fix Ubuntu *appearance/dock/*
```
sudo apt install gnome-tweak-tool dconf-editor
```
> gnome-tweak-tool -> Appearance -> Themes

> gnome-tweak-tool -> Extensions -> Desktop icons (on)

> gnome-tweak-tool -> Extensions -> Ubuntu appindicators (on)

> gnome-tweak-tool -> Extensions -> Ubuntu dock (on)

> gnome-tweak-tool -> Window Titlebars -> Maximize (on)

> gnome-tweak-tool -> Window Titlebars -> Minimize (on)

### Fix dock bar not extending.
```
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height 'true'
```
---

### Install script from [C-NERGY.BE](https://www.c-nergy.be/products.html).
```
wget http://c-nergy.be/downloads/xrdp-installer-1.2.1.zip
unzip xrdp-installer-1.2.1.zip
chmod +x xrdp-installer-1.2.1.sh
```

### Install with sound.
```
./xrdp-installer-1.2.1.sh -s
#If sound module doesn't load
pulseaudio -k
```
