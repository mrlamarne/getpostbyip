#!/bin/bash
echo "Hello stranger.";
#Checking if ip adresse is supplied
if [ $# -eq 1 ]
then
    ip=$1
else
    printf "Let us know the arp name you're looking for :";
    read adresseIp;
    ip=adresseIp;
fi

echo "searching for $ip"
echo "launching a few pings to fill arp data.";
#-q pour quiet , -c pour 4 envoie de ping
ping -q -c 4 $ip;

printf "Showing arp infos : \e[92m";
arp -a | grep -F "$ip"
