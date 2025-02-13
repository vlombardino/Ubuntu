## Backup (Déjà Dup)
> Network Location
```
nfs://192.168.1.10/volume1/Backups/Computers
```

## Synology NFS
> Control Panel -> Shared Folder\
> \*Select Folder\* -> Edit -> NFS Permissions

Hostname or IP: ```192.168.1.0/24```\
Privilege: ```Read/Write```\
Squash: ```Map all users to admin```\
Security: ```sys```

- [x] Enable asynchronous
- [x] Allow connections from non-privileged ports (ports higher than 1024)
- [x] Allow users to access mounted subfolders
