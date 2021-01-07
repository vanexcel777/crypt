#!/usr/bin/python3

from Crypto.PublicKey import RSA
import sys

#ouvir le fichier text
it = sys.argv[1]
arg = open( it , "r")
read_arg = arg.read()
arg.close()

#creation d´un couple de clés
key = RSA.generate(1024)

#chiffrage
public_key = key.publickey()
message = read_arg.encode()
enc_data = public_key.encrypt(message, 32)

#dechiffrage
x = key.decrypt(enc_data)
x = x.decode('utf-8')

#afficher ses clés:
k = key.exportKey('PEM')
p = key.publickey().exportKey('PEM')

#sauvegarder ses clés dans des fichiers:
with open('private.pem','w') as kf:
	kf.write(k.decode())
	kf.close()

with open('public.pem','w') as pf:
	pf.write(p.decode())
	pf.close()

#importer des clés à partir d'un fichier
with open('private.pem','r') as fk:
	priv = fk.read()
	fk.close()

with open('public.pem','r') as fp:
	pub = fp.read()
	fp.close()

privat = RSA.importKey(priv)
public = RSA.importKey(pub)

print ( x )
