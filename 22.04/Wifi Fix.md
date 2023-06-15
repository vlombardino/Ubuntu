# Troubleshooting Wifi - Ubuntu
### Issue: Wifi randomly drops out
Change Wifi power settings:
```bash
vim etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
```
Default
```
[connection]
wifi.powersave = 3
```
Change
```
[connection]
wifi.powersave = 2
```
### Issue: Wifi is not connecting
Check if Wifi radio enabled:
```bash
nmcli radio
```
You should see the following:
```
WIFI-HW  WIFI     WWAN-HW  WWAN    
enabled  enabled  enabled  enabled
```
Check if Wifi modules are loaded:
```bash
lsmod | grep iwlwifi
```
Load Wifi modules:
```bash
sudo modprobe iwlwifi
```
Reinstall Network Manager:
```bash
sudo apt install --reinstall network-manager
```
### Issue: Wifi applet is not visible and/or Settings show empty
Check if Wifi is being blocked
```bash
rfkill unblock all
```
Check if Wifi and Bluetooth are being blocked
```bash
rfkill
```
Check network config files:
```bash
ls /etc/NetworkManager/system-connections/
```
> Example:
```bash
sudo cat /etc/NetworkManager/system-connections/moesol_public.nmconnection
```
Output should be similar to the following:
```
[connection]
id=moesol_public
uuid=########-####-####-####-############
type=wifi
interface-name=wlp0s20f3

[wifi]
mode=infrastructure
ssid=moesol_public

[wifi-security]
auth-alg=open
key-mgmt=wpa-psk
psk=WIFIPASSWORD

[ipv4]
method=auto

[ipv6]
addr-gen-mode=stable-privacy
method=auto

[proxy]
```
