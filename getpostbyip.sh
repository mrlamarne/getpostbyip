#!/bin/bash
echo "Hello stranger.";        
printf "Let us know the arp name you're looking for :";
read adresseIp;

echo "searching for $adresseIp"
echo "launching a few pings to fill arp data.";
#-q pour quiet , -c pour 4 envoie de ping 
ping -q -c 4 $adresseIp;

printf "Showing arp infos : \e[92m";
arp -a | grep -F "$adresseIp" 


