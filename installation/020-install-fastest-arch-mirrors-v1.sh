#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

echo "################################################################"
echo "####             Installing reflector                       ####"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector


echo "################################################################"
echo "####         finding fastest servers - worldwide            ####"
echo "################################################################"

# finding the fastest archlinux servers

sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d


echo "################################################################"
echo "####                  fastest servers  saved                ####"
echo "################################################################"


cat /etc/pacman.d/mirrorlist

echo "################################################################"
echo "####              Checking for possible updates             ####"
echo "################################################################"

sudo pacman -Syu


echo "################################################################"
echo "#####         Your system is now up to date                 ####"
echo "################################################################"

