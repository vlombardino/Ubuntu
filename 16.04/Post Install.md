## Notes:
## http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr
## http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html
##
#!/bin/bash

sudo apt -y update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove && sudo apt -y clean && sudo apt -y autoclean && sudo apt -y check

sudo sed -i "/^# deb .*partner/ s/^# //" /etc/apt/sources.list && apt-get update

#Pepper Flash Player
sudo apt install pepperflashplugin-nonfree

#Nvidia Newest Drivers
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update -y
#other
sudo add-apt-repository ppa:xorg-edgers/ppa -y
sudo apt update

#My default apps
sudo apt -y install synaptic openssh-server cifs-utils ubuntu-restricted-extras gconf-editor gnome-shell vim-nox lo-menubar unity-tweak-tool chromium-browser epiphany-browser keepassx shotwell p7zip-full p7zip-rar rar skype unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller ubuntu-wallpapers* gedit-plugins indicator-multiload classicmenu-indicator exfat-fuse exfat-utils

#Add multimedia codecs and enable DVD playback
sudo apt install gstreamer0.10-plugins-ugly libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra

sudo /usr/share/doc/libdvdread4/install-css.sh

sudo apt install compizconfig-settings-manager
# Ubuntu Unity Plugin – Select Laucher tab – Check list “Minimize Single Window Applications (Unsupported)

#Nautilus Config
#Nautilus -> Edit -> Preferences -> Views -> Icon View Defaults 100%
#Nautilus -> Edit -> Preferences -> Views -> List View Defaults 50%
#Nautilus -> Edit -> Preferences -> Behavior -> Executable Text Files -> Ask each time

#Android Mounting
sudo apt install mtp-tools mtpfs

#VLC
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo apt -y update
sudo apt -y install vlc

#GIMP
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo apt -y update
sudo apt -y install gimp gimp-data gimp-plugin-registry gimp-data-extras

#Java
sudo apt -y install default-jre
or
sudo apt -y install openjdk-7-jre
or
sudo apt -y install python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt -y update
#sudo apt install oracle-java7-installer 
#or
sudo apt install oracle-java8-installer

#PPA Manager
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo apt -y update
sudo apt -y install y-ppa-manager

#LibDVDCSS
echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add -

#Install Essentials
sudo apt -y update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove && sudo apt -y clean && sudo apt -y autoclean && sudo apt -y check

sudo apt install synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras ubuntu-wallpapers*

#Chrome
#!/bin/bash

if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
	sudo dpkg -i google-chrome-stable_current_amd64.deb &&
	rm -f google-chrome-stable_current_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb &&
	sudo dpkg -i google-chrome-stable_current_i386.deb &&
	rm -f google-chrome-stable_current_i386.deb
fi
#Chrome w/java ( http://guaranteedtofail.com/chrome-35-and-java/ )
sudo -s
updatedb
locate libnpjp2.so
##copy the path to your clipboard (mine is /usr/lib/jvm/java-7-oracle/jre/lib/amd64/libnpjp2.so)
mkdir -p /opt/google/chrome/plugins
cd /opt/google/chrome/plugins
ln -s /usr/lib/jvm/java-7-oracle/jre/lib/amd64/libnpjp2.so libnpjp2.so

#GetDeb and PlayDeb
echo "Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&

echo "Installing GetDeb" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&

echo "Installing PlayDeb" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&

echo "Deleting Downloads" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb

#Clean Up
echo "Cleaning Up" &&
sudo apt -f install &&
sudo apt autoremove &&
sudo apt -y autoclean &&
sudo apt -y clean

## Enable numlock ##
sudo apt -y install numlockx
sudo sed -i 's|^exit 0.*$|# Numlock enable\n[ -x /usr/bin/numlockx ] \&\& numlockx on\n\nexit 0|' /etc/rc.local
#sudo su
#echo "greeter-setup-script=/usr/bin/numlockx on" >> /etc/lightdm/lightdm.conf

### SSHPlus ###
# Dependencies are installed
sudo apt install python-gtk2 python-notify xsel
# We calle the temporary folder
cd /tmp
# You download the Python script
wget https://raw.github.com/anilgulecha/misc/master/sshplus.py
# We copy the executable file
sudo mv sshplus.py /usr/local/bin/sshplus.py
# Makes it executable
sudo chmod +x /usr/local/bin/sshplus.py
#ALT + F2 -> Click sshplus
#Add to Starup Programs
#Name: SSHplus, Comment:A remote connect utlity, sshmenu compatible clone, and application starter.

https://raw.githubusercontent.com/anilgulecha/misc/master/sshlist.py

### Virtualbox Indicator ###
sudo add-apt-repository -y ppa:thebernmeister/ppa
sudo apt -y update
sudo apt -y install indicator-virtual-box

### Unity System Tray (*Show Java Programs) ###
sudo add-apt-repository -y ppa:gurqn/systray-trusty
sudo apt -y update
sudo apt -y upgrade

sudo vim /etc/apt/preferences.d/systray-trusty
#Package: *
#Pin: release o=LP-PPA-gurqn-systray-trusty
#Pin-Priority: 600
sudo apt update & upgrade

### Virtualbox ###
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.1
sudo adduser $USER vboxusers

### Wine ###

### Handbrake ###
sudo add-apt-repository -y ppa:stebbins/handbrake-releases
#sudo add-apt-repository -y ppa:stebbins/handbrake-snapshots
sudo apt -y update
sudo apt -y install handbrake-gtk handbrake-cli

### Makemkv ###
#sudo add-apt-repository -y ppa:ubuntu-ebower/ebower
#sudo apt -y update
#sudo apt -y install makemkv-install
#sudo makemkv-install 1.9.8
#or
sudo apt install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev
wget #https://launchpad.net/~ubuntu-ebower/+archive/ubuntu/ebower/+files/makemkv-install_0.1.4.1_amd64.deb
sudo dpkg -i makemkv-install_0.1.4.1_amd64.deb

### MKVToolNix ###
#wget -O - http://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add -
#sudo add-apt-repository "deb http://www.bunkus.org/ubuntu/xenial/ ./"
#sudo apt update
#sudo apt install mkvtoolnix mkvtoolnix-gui
