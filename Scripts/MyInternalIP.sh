#!/bin/sh

#Requires net-tools
#sudo apt install net-tools

#http://askubuntu.com/questions/145012/how-can-i-find-my-public-ip-using-the-terminal
ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }' echo "net: $(wget http://ipecho.net/plain -O - -q ; echo)"
