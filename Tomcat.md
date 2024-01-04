# [Tomcat](https://tomcat.apache.org)

### Operating System & Software
- Ubuntu 20.04 (root)
- Apache Tomcat 9 Server


### Install from repository
```bash
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y \
  sudo \
  unzip \
  default-jdk-headless \
  tomcat9 \
  tomcat9-admin \
  tomcat9-docs \
  tomcat9-examples && \
  net-tools && \
apt-get clean autoclean && \
apt-get autoremove -y && \
```

### Start Tomcate9 service and add it to system boot
```bash
systemctl start tomcat9
systemctl enable tomcat9
```

### Check if Tomcat9 service is running and ports
```bash
ss -plnt
systemctl status tomcat9
```

### Configure Tomcat user configuration file.
> Change ***USER*** & ***PASS***
```bash
cp /etc/tomcat9/tomcat-users.xml /etc/tomcat9/tomcat-users.xml.orig
nano /etc/tomcat9/tomcat-users.xml
####################ADD TEXT####################
<role rolename="admin"/>
<role rolename="admin-gui"/>
<role rolename="manager"/>
<role rolename="manager-gui"/>
<user username="USER" password="PASS" roles="admin,admin-gui,manager,manager-gui"/>
################################################
```

### Edit Tomcat context file for manager.
> Comment out block.
```bash
nano /etc/tomcat9//webapps/manager/META-INF/context.xml
####################MOD TEXT####################
<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"
allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->
################################################
```
### Edit Tomcat context file for host-manager.
> Comment out block.
```bash
nano /etc/tomcat9//webapps/host-manager/META-INF/context.xml
####################MOD TEXT####################
<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"
allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->
################################################
```

### Restart Tomcat
```bash
systemctl restart tomcat9
```

### Access Tomcat web interface
* http://localhost:8080
* http://ip-addres:8080
* http://youdomain.com:8080

## Update Scripts
```bash
#!/bin/sh
##

##########################################################################
#####################    Change Information below    #####################

### Get file from [https://tomcat.apache.org/download-90.cgi] --> Core: tar.gz ###
#TCDL="https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz"
TCDL="https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.tar.gz"

### Change if tomcat file name changes ###
TCVS="apache-tomcat-*tar.gz"

##########################################################################
#####################          Start Script          #####################

### Current version ###
echo "Current version:"
cat /opt/tomcat/RELEASE-NOTES | grep "Apache Tomcat Version"
echo

### Stop tomcat services ###
echo "Shutting down tomcat services ..."
systemctl stop tomcat
echo
sleep 1

### Backup config Files ###
echo "Backing up config files ..."
cp /opt/tomcat/conf/tomcat-users.xml /tmp/tomcat-users.xml
cp /opt/tomcat/webapps/manager/META-INF/context.xml /tmp/m.context.xml
cp /opt/tomcat/webapps/host-manager/META-INF/context.xml /tmp/hm.context.xml
cp /opt/tomcat/conf/server.xml /tmp/tomcat-server.xml
echo

### Download Tomcap specified above ###
echo "Downloading file ..."
wget -q ${TCDL} -P /tmp/
tar xzf /tmp/${TCVS} -C /opt/tomcat --strip-components=1
echo

### Restore config files ###
echo "Restoring config files ..."
mv /tmp/tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml
mv /tmp/m.context.xml /opt/tomcat/webapps/manager/META-INF/context.xml
mv /tmp/hm.context.xml /opt/tomcat/webapps/host-manager/META-INF/context.xml
mv /tmp/tomcat-server.xml /opt/tomcat/conf/server.xml
echo
sleep 1

### Give correct permissions to tomcat files and folders ###
chown -R tomcat:tomcat /opt/tomcat
chmod +x /opt/tomcat/bin/*

### Start tomcat services ###
echo "Starting tomcat ..."
systemctl start tomcat
echo
sleep 1

### Updated version
echo "Updated Version:"
cat /opt/tomcat/RELEASE-NOTES | grep "Apache Tomcat Version"
```
