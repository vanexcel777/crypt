#!/bin/bash

crypt=$( ls /home/$USER/crypt/tocrypt/ )

if [ -f /home/$USER/crypt/tocrypt/$crypt ];
then 
	python3 /home/$USER/crypt/script/crypt.py /home/$USER/crypt/tocrypt/$crypt  >> /home/$USER/crypt/crypted/crypted.txt
else 
	echo " cryptage" >> /home/$USER/crypt/tocrypt/tocrypt.txt
	cryp=$( ls /home/$USER/crypt/tocrypt/ )
	python3 /home/$USER/crypt/script/crypt.py /home/$USER/crypt/tocrypt/$cryp >>  /home/$USER/crypt/crypted/crypted.txt
fi

