## Install script from [C-NERGY.BE](https://www.c-nergy.be/products.html).
```
wget -q -O xrdp-installer.zip https://www.c-nergy.be/downloads/xRDP/xrdp-installer-1.4.4.zip && unzip xrdp-installer.zip && rm xrdp-installer.zip

chmod +x xrdp-installer-*.sh
```

### Install with sound.
```
./xrdp-installer-1.4.4.sh -s
#If sound module doesn't load
pulseaudio -k
```

---

## Install ssh server & xrdp
```
sudo apt install openssh-server xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
sudo ufw allow 3389
sudo systemctl restart xrdp
```

### Enforce ssh connection
```
sudo gedit /etc/xrdp/xrdp.ini
```
> Change
`port=3389`
> to
`port=tcp://.:3389`
```
sudo systemctl restart xrdp
```

### Remmina settings
* Basic:
  - Server: `localhost:3389`
  - Username: `rdp-user`
  - Password: `rdp-pass`
  - Resolution (Custom): `1024x768`
* SSH Tunnel:
  - Enable SSH tunnel
    - Custom: `server-ip-address`
    - Username: `ssh-user`
    - Password: `ssh-pass`

### Login to Ubuntu (Gnome):
> Log into Ubuntu with remmina and change the following:
```
gedit .xsessionrc
```
```
export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg
```

---

### Fix error "*Authentication required to create managed color device.*"
```
sudo bash -c 'cat <<- EOF >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOF'
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
