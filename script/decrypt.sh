#!/bin/bash
crypt=$( ls /home/$USER/crypt/todecrypt/ )
decrypt=$( ls /home/$USER/crypt/tocrypt/ )

if [ -f /home/$USER/crypt/todecrypt/$crypt ];
then 
	python3 /home/$USER/crypt/script/decrypt.py /home/$USER/crypt/tocrypt/$decrypt  >> /home/$USER/crypt/decrypted/decrypted.txt
fi

