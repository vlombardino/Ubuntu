# [Apache](https://httpd.apache.org/)
> Apache Web Server running on Ubuntu 22.04 \
> All commands will be assumed you are running as root

### Update & Upgrade
```bash
apt get update && apt get upgrade -y
```

## Install Apache
### Install Apache withe the following command
```bash
apt install apache2 -y
```

### Configure firewall
```bash
ufw status
ufw allow 80/tcp
ufw allow 443/tcp
```
or
```bash
ufw app list
ufw allow 'Apache Full'
ufw status
```

### Check and start Apache service
```bash
systemctl status apache2
sudo systemctl enable --now apache2
```

### Use ss or netstat to check Apache listening port
```bash
ss -plant | grep apache
```
or
```bash
netstat -plnt | grep apache
```

## Change Apache default port (if needed)
### Edit Apache default port
If default port needs to be changed edit the following files:
> Change `Listen 80` or add additional ports under `Listen 80`
```bash
nano /etc/apache2/ports.conf
```

### Edit Apache default virtual host configuration
> Change `<VirtualHost *:80>`
```bash
nano /etc/apache2/sites-available/000-default.conf
```

---

## Apache services
```bash
systemctl start apache2
systemctl stop apache2
systemctl restart apache2
systemctl reload apche2
systemctl enable apache2
systemctl disable apache2

/etc/init.d/apache2 graceful
```

## Fix file permissions
```bash
chown -R www-data:www-data /var/www
```
```bash
chmod -R g+rw /var/www; find /var/www -type d -print0 | xargs -0 chmod g+s
```