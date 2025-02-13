# [Cockpit](https://cockpit-project.org/)

### Install for Ubuntu 24.04
```bash
sudo apt install cockpit -y
```
```bash
sudo systemctl enable --now cockpit.socket
```
[Optional](https://cockpit-project.org/running.html#ubuntu):
```bash
. /etc/os-release
sudo apt install -t ${VERSION_CODENAME}-backports cockpit
```

## The following will setup Cockpit for:
* Storage
* Network
* Software
* Samba
* NFS Server
* KVM/QEMU
* Podman
* ZFS
* Sensors

## Install required software
```bash
sudo apt install git samba nfs-kernel-server qemu-kvm virt-manager libvirt-clients bridge-utils libvirt-daemon-system virtinst podman zfsutils-linux lm-sensors
```


## Install [Cockpit Applications](https://cockpit-project.org/applications.html)

```bash
sudo apt install cockpit-storaged cockpit-networkmanager cockpit-packagekit cockpit-machines cockpit-podman cockpit-sosreport cockpit-files
```
LM-Sensors
```bash
wget https://github.com/ocristopfer/cockpit-sensors/releases/latest/download/cockpit-sensors.tar.xz && \
tar -xf cockpit-sensors.tar.xz cockpit-sensors/dist && \
mv cockpit-sensors/dist /usr/share/cockpit/sensors && \
rm -r cockpit-sensors && \
rm cockpit-sensors.tar.xz
```

45Drives Applications
> [zfs](https://github.com/45Drives/cockpit-zfs-manager)
```bash
git clone https://github.com/45drives/cockpit-zfs-manager.git
```
```bash
sudo cp -r cockpit-zfs-manager/zfs /usr/share/cockpit
```
> [File Sharing](https://github.com/45Drives/cockpit-file-sharing)
```bash
curl -sSL https://repo.45drives.com/setup | sudo bash && sudo apt update
```
```bash
sudo apt install cockpit-file-sharing
```
> [Identities](https://github.com/45Drives/cockpit-identities)
```bash
sudo apt install cockpit-identities
```
> [Navigator](https://github.com/45Drives/cockpit-navigator)
```bash
sudo apt install cockpit-navigator
```

[45Drives Scripts](https://github.com/45Drives/scripts/tree/main)
Ubuntu 20.04
```bash
bash -c "$(wget -qLO - https://github.com/45Drives/scripts/blob/main/ubuntu20-preconfig-ceph.sh)"
```
Ubuntu 22.04
```bash
bash -c "$(wget -qLO - https://github.com/45Drives/scripts/blob/main/ubuntu22-preconfig-ceph.sh)"
```