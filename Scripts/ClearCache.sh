#!/bin/bash
## empty buffer and cache
#sudo sh -c "free -h && sync && echo 3 > /proc/sys/vm/drop_caches && free -h"

## free page cache
#sudo sh -c "echo 1 > /proc/sys/vm/drop_caches"

## free dentries and inodes
#sudo sh -c "echo 2 > /proc/sys/vm/drop_caches"

## free page cache, dentries, and inodes
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"
