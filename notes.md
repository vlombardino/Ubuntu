### Shorcut Locations
Most apps: ```/usr/share/applications/```

Some apps: ```/usr/local/share/applications```

Some other apps: ```~/.local/share/applications/```

Installed by Snap apps: ```/var/lib/snapd/desktop/applications/```

Installed by Flatpak apps: ```/var/lib/flatpak/exports/share/applications/```



### list information about block devices
```
lsblk -o name,size,fstype,mountpoint,path,label,model,serial
```
