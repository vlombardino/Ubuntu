# General
### Shorcut Locations
Most apps: ```/usr/share/applications/```

Some apps: ```/usr/local/share/applications```

Some other apps: ```~/.local/share/applications/```

Installed by Snap apps: ```/var/lib/snapd/desktop/applications/```

Installed by Flatpak apps: ```/var/lib/flatpak/exports/share/applications/```

### Passwordless SSH
```bash
ssh-keygen -f $USER
ssh-copy-id -i ~/.ssh/id_rsa $USER@remote-server
```

### list information about block devices
```bash
lsblk -o name,size,fstype,mountpoint,path,label,model,serial
```

# GPU Notes
### AMD
[Radeontop](https://github.com/clbr/radeontop)
```bash
sudo apt install radeontop
```

### Nvidia
[nvidia-smi](https://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries)

### Overlays
+ [MangoHud](https://github.com/flightlessmango/MangoHud)
+ [GOverlay](https://github.com/benjamimgois/goverlay)

# Apps
### Youtbe Downloader
> Notes
[yt-dlp](https://snapcraft.io/install/yt-dlp/ubuntu#install)
```bash
sudo snap install yt-dlp
```
List formats
```bash
 yt-dlp -F https://www.youtube.com/watch?v=99999999
```
Download with best video and audio
```bash
yt-dlp -f 'bv*+ba' https://www.youtube.com/watch?v=999999999 -o '%(id)s.%(ext)s'
```
Download playlist (playlist numbering)
```bash
yt-dlp -o "%(playlist_index)02d - %(title)s.%(ext)s" https://www.youtube.com/playlist?list=99999999
```