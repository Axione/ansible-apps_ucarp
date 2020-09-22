#!/bin/sh
# Required softwares: arping (debian package "iputils-arping") 
# and atk6-fake_advertise6 (debian package "thc-ipv6")

IPBIN="/sbin/ip"
ARPPINGBIN="/usr/bin/arping"

CARPIF=$1
VIPv4=$2
#IFLIST=$($IPBIN -d l | grep -B2 -E "802.1Q id $VLANIDREGEX" | grep -Po "h-[a-z]+(?=@)")

#Check if missing package
if [ ! -x $ARPPINGBIN ]; then
    echo "[ERROR] $ARPPINGBIN (debian package \"iputils-arping\") not installed or not executable!"
    exit 1
fi

#Mount interface
for iface in ens3
do
    echo "[INFO] Adding VIP $VIPv4 on interface $iface"
    $IPBIN a a $VIPv4/32 scope link dev $iface

    echo "[INFO] Flooding gratuitous ARP for VIP $VIPv4 on interface $iface"
    $ARPPINGBIN -I $iface -c 10 -q -U $VIPv4 1>/dev/null &
done

#Reload service to be sure to be up-to-date

