#!/bin/bash

utenti="$(ls/home)"

for user in $utenti;do

	echo ciao > /home/$user/scrivaia/prova.txt
	cp remoto.sh /home/$user/scrivania/remoto.sh
done
