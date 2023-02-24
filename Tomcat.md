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