# Install Puppet

## Requirements
* Ubuntu 20.04 [Puppet Master]

## Puppet Master

### Add Puppet Master to [/etc/hosts] file
> Important to note the first name is the name used on clients.
```bash
cat << EOF >> /etc/hosts
### --- Puppet Master ---
192.168.1.100 pm.local
### --- End ---
EOF
```

### Add Clients to [/etc/hosts] file
```bash
cat << EOF >> /etc/hosts
### --- Puppet Clients ---
192.168.1.101 puppetclient1
192.168.1.102 puppetclient2
192.168.1.103 puppetclient3
### --- End ---
EOF
```

### Install Puppet Server
```bash
wget https://apt.puppetlabs.com/puppet7-release-focal.deb
sudo dpkg -i puppet7-release-focal.deb
sudo apt update && sudo apt install puppetserver -y
```

### Reduce default memory [Optional]
```bash
sudo nano /etc/default/puppetserver
```
`JAVA_ARGS="-Xms1g -Xmx1g -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"`

### Start, enable and check status for Puppet Server
```bash
sudo systemctl start puppetserver && sudo systemctl enable puppetserver && sudo systemctl status puppetserver
```

### List all certificates
```bash
sudo /opt/puppetlabs/bin/puppetserver ca list --all 
```

### Sign all certificates
```bash
sudo /opt/puppetlabs/bin/puppetserver ca sign --all
```

---

## Puppet Clients

### Install Puppet Agent
```bash
wget https://apt.puppetlabs.com/puppet7-release-focal.deb 
sudo dpkg -i puppet7-release-focal.deb
sudo apt update && sudo apt install puppet-agent -y
```

### Edit Puppet configuration file for [puppetclient1]
```bash
cat << EOF >> /etc/puppetlabs/puppet/puppet.conf
[main]
certname = puppetclient1
server = pm.local
EOF
```

### Start, enable and check status for Puppet Agent
```bash
sudo systemctl start puppet && sudo systemctl enable puppet && sudo systemctl status puppet
```

### Test communication to the Puppet Server
```bash
sudo /opt/puppetlabs/bin/puppet agent --test
```
