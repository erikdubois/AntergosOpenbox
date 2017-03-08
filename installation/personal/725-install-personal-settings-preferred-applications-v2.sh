#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "preferred application can be set - browsers, terminal, ..."


sh settings/preferred-applications/set-preferred-applications-v1.sh


echo "if you get errors, run this script later"
echo "it requires xserver to run"

echo "################################################################"
echo "#########        preferred application set        ##############"
echo "################################################################"

