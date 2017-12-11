#!/bin/bash

utenti="$(ls /home)"	#variabile contenente gli utenti
TUTTI_GLI_IP="10.2.60.100 10.2.4.140 10.2.4.11 10.2.7.100 10.2.40.100"	#variabile contenente gli IP

for user in $utenti	#per ogni utente
do
	for IP in $TUTTI_GLI_IP		#per ogni IP sopra indicati
	do	
		sed "s/10.2.60.100/$IP/g" VM.remmina > VM-$IP.remmina	#crea file di configurazione remmina(VM-$IP.remmina) con l'IP interessato.
		cp VM-$IP.remmina /home/$user/Desktop/	#copia il file di configurazione remmina sul desktop di tutti gli utenti
		sed "s/VM.remmina/VM-$IP.remmina/g" remoto.sh > /home/$user/Desktop/remoto-$IP.sh #cambia in ogni file remoto-$IP.sh l'esecuzione e copia il file sul desktop di ogni utente
	done
done
