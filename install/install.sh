#crypter le fichier texte
sudo cp /home/$USER/crypt/src/crypt.service /etc/systemd/system/crypt.service
sudo systemctl start crypt.service
sudo systemctl enable crypt.service

sudo cp /home/$USER/crypt/crypted/crypted.txt  /home/$USER/crypt/todecrypt/todecrypt.txt

#decrypter le message
sudo cp /home/$USER/crypt/src/decrypt.service /etc/systemd/system/decrypt.service
sudo systemctl start decrypt.service
sudo systemctl enable decrypt.service

