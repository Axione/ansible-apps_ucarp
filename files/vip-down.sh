#!/bin/sh

IPBIN="/sbin/ip"

CARPIF=$1
VIPv4=$2
#IFLIST=$($IPBIN -d l | grep -B2 -E "802.1Q id $VLANIDREGEX" | grep -Po "h-[a-z]+(?=@)")

for iface in ens3
do
    echo "[INFO] Deleting VIP $VIPv4 from interface $iface"
    $IPBIN a d $VIPv4/32 scope link dev $iface
done


