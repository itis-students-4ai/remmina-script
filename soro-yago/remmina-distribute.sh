#!/bin/bash

utenti="$(ls /home)"

OGNI_IP="10.2.60.100 10.2.4.140 10.2.4.11 10.2.7.100 10.2.40.100"

for user in $utenti; do
	
	for IP in $OGNI_IP; do
		
		sed "s/10.2.60.100/$IP/g" VM.remmina > VM-$IP.remmina
		cp VM-$IP.remmina /home/$user/Desktop/
		sed "s/VM.remmina/VM-$IP.remmina/g" remoto.sh > /home/$user/Desktop/remoto-$IP.sh

	done

done
